import 'package:dungeon_paper/app/data/models/ability_scores.dart';
import 'package:dungeon_paper/app/data/models/character.dart';
import 'package:dungeon_paper/app/data/models/move.dart';
import 'package:dungeon_paper/app/data/services/character_service.dart';
import 'package:dungeon_paper/app/data/services/repository_service.dart';
import 'package:dungeon_paper/app/model_utils/model_pages.dart';
import 'package:dungeon_paper/app/modules/LibraryList/controllers/library_list_controller.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/library_list_view.dart';
import 'package:dungeon_paper/app/widgets/cards/move_card.dart';
import 'package:dungeon_paper/app/widgets/menus/entity_edit_menu.dart';
import 'package:flutter/material.dart';
import 'package:dungeon_world_data/dungeon_world_data.dart' as dw;

import 'package:get/get.dart';

import 'filters/move_filters.dart';

class MovesLibraryListView extends GetView<LibraryListController<Move, MoveFilters>> with CharacterServiceMixin {
  const MovesLibraryListView({
    Key? key,
  }) : super(key: key);

  RepositoryService get service => controller.repo.value;

  @override
  Widget build(BuildContext context) {
    return LibraryListView<Move, MoveFilters>(
      filtersBuilder: (group, filters, onChange) => MoveFiltersView(
        group: group,
        filters: filters,
        onChange: (f) => onChange(group, f),
        searchController: controller.search[group]!,
      ),
      cardBuilder: (ctx, data) => MoveCard(
        move: data.item,
        showDice: false,
        showStar: false,
        highlightWords: data.highlightWords,
        onExpansion: data.onExpansion,
        actions: [
          EntityEditMenu(
            onEdit: data.onUpdate != null
                ? () => ModelPages.openMovePage(
                      abilityScores: maybeChar?.abilityScores ?? AbilityScores.dungeonWorldAll(10),
                      move: data.item,
                      onSave: data.onUpdate!,
                    )
                : null,
            onDelete: data.onDelete != null ? () => data.onDelete!(data.item) : null,
          ),
        ],
      ),
    );
  }
}

class MoveLibraryListArguments extends LibraryListArguments<Move, MoveFilters> {
  MoveLibraryListArguments({
    required Character? character,
    required super.onSelected,
    required super.preSelections,
    MoveCategory? category,
    super.initialTab,
    AbilityScores? abilityScores,
    List<dw.EntityReference>? classKeys,
  }) : super(
          sortFn: Move.sorter,
          filterFn: (move, filters) => filters.filter(move),
          filters: {
            FiltersGroup.playbook: MoveFilters(classKey: character?.characterClass.key, category: category),
            FiltersGroup.my: MoveFilters(classKey: character?.characterClass.key, category: category),
          },
          extraData: {
            'abilityScores': abilityScores ?? character?.abilityScores,
            'classKeys': (classKeys?.isNotEmpty ?? false)
                ? classKeys
                : (character != null ? [character.characterClass.key] : null),
          },
        );
}
