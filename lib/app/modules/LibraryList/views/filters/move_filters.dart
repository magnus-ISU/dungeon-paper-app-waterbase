import 'package:dungeon_paper/app/data/models/character_class.dart';
import 'package:dungeon_paper/app/data/models/move.dart';
import 'package:dungeon_paper/app/data/services/repository_service.dart';
import 'package:dungeon_paper/app/modules/LibraryList/controllers/library_list_controller.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/entity_filters.dart';
import 'package:dungeon_paper/app/widgets/atoms/select_box.dart';
import 'package:dungeon_paper/core/utils/math_utils.dart';
import 'package:dungeon_paper/core/utils/string_utils.dart';
import 'package:dungeon_paper/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:string_similarity/string_similarity.dart';

class MoveFiltersView extends StatelessWidget {
  MoveFiltersView({
    Key? key,
    required this.filters,
    required this.group,
    required this.onChange,
    required this.searchController,
  }) : super(key: key);

  final MoveFilters filters;
  final FiltersGroup group;
  final repo = Get.find<RepositoryService>();
  final void Function(MoveFilters) onChange;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return EntityFiltersView<Move, MoveFilters>(
      filters: filters,
      emptyFilters: MoveFilters(classKey: null),
      onChange: onChange,
      searchController: searchController,
      filterWidgetsBuilder: (context, f) => [
        SelectBox<MoveCategory?>(
          isExpanded: true,
          label: Text(S.current.entityPlural(MoveCategory)),
          value: f.category,
          items: [
            DropdownMenuItem<MoveCategory?>(
              child: Text(S.current.allGeneric(S.current.entityPlural(MoveCategory))),
              value: null,
            ),
            ...MoveCategory.values.map(
              (cat) => DropdownMenuItem<MoveCategory?>(
                child: Text(
                  ![MoveCategory.advanced1, MoveCategory.advanced2].contains(cat)
                      ? S.current.moveCategory(cat)
                      : S.current.moveCategoryWithLevel(cat),
                ),
                value: cat,
              ),
            ),
          ],
          onChanged: (cat) {
            onChange(f..category = cat);
            f.controller.add(f);
          },
        ),
        SelectBox<String>(
          label: Text(S.current.entityPlural(CharacterClass)),
          isExpanded: true,
          value: f.classKey,
          items: [
            DropdownMenuItem<String>(
              child: Text(S.current.allGeneric(S.current.entityPlural(CharacterClass))),
              value: null,
            ),
            ...<CharacterClass>{...repo.builtIn.classes.values, ...repo.my.classes.values}.map(
              (cls) => DropdownMenuItem<String>(
                child: Text(cls.name),
                value: cls.key,
              ),
            ),
          ],
          onChanged: (key) {
            onChange(f..classKey = key);
            f.controller.add(f);
          },
        ),
      ],
    );
  }
}

class MoveFilters extends EntityFilters<Move> {
  MoveCategory? category;
  String? search;
  String? classKey;

  MoveFilters({
    this.category,
    this.search,
    required this.classKey,
  });

  @override
  bool filter(Move move) {
    if (category != null) {
      if (move.category != category) {
        return false;
      }
    }

    if (search != null && search!.isNotEmpty) {
      if (![
        move.name,
        move.description,
        move.explanation,
        ...move.tags.map((t) => t.name),
        ...move.tags.map((t) => t.value?.toString()),
      ].any((el) => cleanStr(el ?? '').contains(cleanStr(search!)))) {
        return false;
      }
    }

    if (classKey != null) {
      if (![MoveCategory.basic, MoveCategory.special].contains(category) &&
          !move.classKeys.map((x) => cleanStr(x.key)).contains(cleanStr(classKey!))) {
        return false;
      }
    }
    return true;
  }

  @override
  void setSearch(String search) {
    this.search = search;
  }

  @override
  List<bool?> get filterActiveList => [category != null, classKey?.isNotEmpty];

  @override
  double getScore(Move move) {
    return avg(
      [
            category == move.category ? 1.0 : 0.0,
            classKey != null && move.classKeys.map((x) => cleanStr(x.key)).contains(cleanStr(classKey!)) ? 1.0 : 0.0,
          ] +
          [move.name, move.description, move.explanation]
              .map(
                (e) => (search?.isEmpty ?? true) || e.isEmpty ? 0.0 : StringSimilarity.compareTwoStrings(search!, e),
              )
              .toList(),
    );
  }
}
