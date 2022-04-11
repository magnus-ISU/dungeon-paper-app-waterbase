import 'package:dungeon_paper/app/data/models/note.dart';
import 'package:dungeon_paper/app/data/services/repository_service.dart';
import 'package:dungeon_paper/app/modules/AddRepositoryItems/controllers/add_repository_items_controller.dart';
import 'package:dungeon_paper/app/modules/AddRepositoryItems/views/entity_filters.dart';
import 'package:dungeon_paper/core/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoteFiltersView extends StatelessWidget {
  NoteFiltersView({
    Key? key,
    required this.filters,
    required this.onChange,
    required this.searchController,
  }) : super(key: key);

  final NoteFilters filters;
  final service = Get.find<RepositoryService>();
  final void Function(NoteFilters) onChange;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return EntityFiltersView<Note, NoteFilters>(
      filters: filters,
      onChange: onChange,
      searchController: searchController,
    );
  }
}

class NoteFilters extends EntityFilters<Note> {
  String? search;

  NoteFilters({
    this.search,
  });

  @override
  // ignore: avoid_renaming_method_parameters
  bool filter(Note note) {
    if (search != null && search!.isNotEmpty) {
      if (![
        note.title,
        note.description,
        ...note.tags.map((t) => t.name),
        ...note.tags.map((t) => t.value),
      ].any((el) => cleanStr(el ?? '').contains(cleanStr(search!)))) {
        return false;
      }
    }
    return true;
  }

  @override
  void setSearch(String search) => this.search = search;

  @override
  List<bool?> get filterActiveList => [];
}
