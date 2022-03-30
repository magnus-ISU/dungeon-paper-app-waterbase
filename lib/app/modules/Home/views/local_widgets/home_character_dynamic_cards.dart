import 'package:dungeon_paper/app/data/models/item.dart';
import 'package:dungeon_paper/app/data/models/note.dart';
import 'package:dungeon_paper/app/model_utils/character_utils.dart';
import 'package:dungeon_paper/app/model_utils/model_key.dart';
import 'package:dungeon_paper/app/modules/AddRepositoryItems/bindings/repository_item_form_binding.dart';
import 'package:dungeon_paper/app/modules/Home/views/expanded_card_dialog_view.dart';
import 'package:dungeon_paper/app/widgets/cards/item_card.dart';
import 'package:dungeon_paper/app/widgets/cards/item_card_mini.dart';
import 'package:dungeon_paper/app/widgets/cards/move_card.dart';
import 'package:dungeon_paper/app/widgets/cards/note_card.dart';
import 'package:dungeon_paper/app/widgets/cards/note_card_mini.dart';
import 'package:dungeon_paper/app/widgets/cards/spell_card.dart';
import 'package:dungeon_paper/app/widgets/dialogs/confirm_delete_dialog.dart';
import 'package:dungeon_paper/app/widgets/forms/repository_item_form.dart';
import 'package:dungeon_paper/app/widgets/menus/entity_edit_menu.dart';
import 'package:dungeon_paper/core/utils/list_utils.dart';
import 'package:dungeon_paper/generated/l10n.dart';
import 'package:dungeon_paper/app/data/models/move.dart';
import 'package:dungeon_paper/app/data/models/spell.dart';
import 'package:dungeon_paper/app/data/services/character_service.dart';
import 'package:dungeon_paper/app/widgets/cards/move_card_mini.dart';
import 'package:dungeon_paper/app/widgets/cards/spell_card_mini.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCharacterDynamicCards extends GetView<CharacterService> {
  const HomeCharacterDynamicCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cardSize = Size(210, 153);

    return Obx(() {
      final moves = (controller.current?.moves ?? <Move>[]).where((m) => m.favorited);
      final spells = (controller.current?.spells ?? <Spell>[]).where((m) => m.prepared);
      final items = (controller.current?.items ?? <Item>[]).where((m) => m.equipped);
      final notes = (controller.current?.notes ?? <Note>[]).where((n) => n.favorited);
      final maxContentHeight = MediaQuery.of(context).size.height - 250;

      return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            // MOVES
            //
            if (moves.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(S.current.dynamicCategoriesMoves),
              ),
            _HorizontalCardListView<Move>(
              cardSize: cardSize,
              items: moves,
              cardBuilder: (context, move, _, onTap) => MoveCardMini(
                move: move,
                onTap: onTap,
                onSave: (_move) => controller.updateCharacter(
                  CharacterUtils.updateMoves(controller.current!, [_move]),
                ),
              ),
              expandedCardBuilder: (context, move, _) => MoveCard(
                maxContentHeight: maxContentHeight,
                expandable: false,
                initiallyExpanded: true,
                move: move,
                actions: [
                  EntityEditMenu(
                    onEdit: () => Get.to(
                      () => RepositoryItemForm<Move>(
                        onSave: (move) => controller.updateCharacter(
                          CharacterUtils.updateMoves(controller.current!, [move]),
                        ),
                        type: ItemFormType.edit,
                      ),
                      binding: RepositoryItemFormBinding(item: move),
                    ),
                    onDelete: () => awaitConfirmation(
                      confirmDelete<Move>(context, move.name),
                      () {
                        controller.updateCharacter(
                          CharacterUtils.removeMoves(controller.current!, [move]),
                        );
                        Get.back();
                      },
                    ),
                  ),
                ],
                onSave: (_move) => controller.updateCharacter(
                  CharacterUtils.updateMoves(controller.current!, [_move]),
                ),
              ),
            ),
            //
            // SPELLS
            //
            if (spells.isNotEmpty) ...[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(S.current.dynamicCategoriesSpells),
              ),
            ],
            _HorizontalCardListView<Spell>(
              cardSize: cardSize,
              items: spells,
              cardBuilder: (context, spell, _, onTap) => SpellCardMini(
                spell: spell,
                onSave: (_spell) => controller.updateCharacter(
                  CharacterUtils.updateSpells(controller.current!, [_spell]),
                ),
                onTap: onTap,
              ),
              expandedCardBuilder: (context, spell, _) => SpellCard(
                maxContentHeight: maxContentHeight,
                expandable: false,
                initiallyExpanded: true,
                spell: spell,
                actions: [
                  EntityEditMenu(
                    onEdit: () => Get.to(
                      () => RepositoryItemForm<Spell>(
                        onSave: (spell) => controller.updateCharacter(
                          CharacterUtils.updateSpells(controller.current!, [spell]),
                        ),
                        type: ItemFormType.edit,
                      ),
                    ),
                    onDelete: () => awaitConfirmation(
                      confirmDelete<Spell>(context, spell.name),
                      () {
                        controller.updateCharacter(
                          CharacterUtils.removeSpells(controller.current!, [spell]),
                        );
                        Get.back();
                      },
                    ),
                  ),
                ],
                onSave: (_spell) => controller.updateCharacter(
                  CharacterUtils.updateSpells(controller.current!, [_spell]),
                ),
              ),
            ),
            //
            // ITEMS
            //
            if (items.isNotEmpty) ...[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(S.current.dynamicCategoriesItems),
              ),
            ],
            _HorizontalCardListView<Item>(
              cardSize: cardSize,
              items: items,
              cardBuilder: (context, item, _, onTap) => ItemCardMini(
                item: item,
                onTap: onTap,
                onSave: (_item) => controller.updateCharacter(
                  CharacterUtils.updateItems(controller.current!, [_item]),
                ),
              ),
              expandedCardBuilder: (context, item, _) => ItemCard(
                maxContentHeight: maxContentHeight,
                expandable: false,
                initiallyExpanded: true,
                item: item,
                actions: [
                  EntityEditMenu(
                    onEdit: () => Get.to(
                      () => RepositoryItemForm<Item>(
                        onSave: (item) => controller.updateCharacter(
                          CharacterUtils.updateItems(controller.current!, [item]),
                        ),
                        type: ItemFormType.edit,
                      ),
                    ),
                    onDelete: () => awaitConfirmation(
                      confirmDelete<Item>(context, item.name),
                      () {
                        controller.updateCharacter(
                          CharacterUtils.removeItems(controller.current!, [item]),
                        );
                        Get.back();
                      },
                    ),
                  ),
                ],
                onSave: (_item) => controller.updateCharacter(
                  CharacterUtils.updateItems(controller.current!, [_item]),
                ),
              ),
            ),
            //
            // NOTES
            //
            if (notes.isNotEmpty) ...[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(S.current.dynamicCategoriesNotes),
              ),
            ],
            _HorizontalCardListView<Note>(
              cardSize: cardSize,
              items: notes,
              cardBuilder: (context, note, _, onTap) => NoteCardMini(
                note: note,
                onTap: onTap,
                onSave: (_note) => controller.updateCharacter(
                  CharacterUtils.updateNotes(controller.current!, [_note]),
                ),
              ),
              expandedCardBuilder: (context, note, _) => NoteCard(
                maxContentHeight: maxContentHeight,
                expandable: false,
                initiallyExpanded: true,
                note: note,
                actions: [
                  EntityEditMenu(
                    onEdit: () => Get.to(
                      () => RepositoryItemForm<Note>(
                        onSave: (note) => controller.updateCharacter(
                          CharacterUtils.updateNotes(controller.current!, [note]),
                        ),
                        type: ItemFormType.edit,
                      ),
                    ),
                    onDelete: () => awaitConfirmation(
                      confirmDelete<Note>(context, note.title),
                      () {
                        controller.updateCharacter(
                          CharacterUtils.removeNotes(controller.current!, [note]),
                        );
                        Get.back();
                      },
                    ),
                  ),
                ],
                onSave: (_note) => controller.updateCharacter(
                  CharacterUtils.updateNotes(controller.current!, [_note]),
                ),
              ),
            ),
          ]);
    });
  }
}

class _HorizontalCardListView<T> extends StatelessWidget {
  const _HorizontalCardListView({
    Key? key,
    required this.cardSize,
    required this.items,
    required this.cardBuilder,
    required this.expandedCardBuilder,
  }) : super(key: key);

  final Size cardSize;
  final Widget Function(BuildContext context, T item, int index, void Function() onTap) cardBuilder;
  final Widget Function(BuildContext context, T item, int index) expandedCardBuilder;
  final Iterable<T> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Container();
    }
    return SizedBox(
      height: cardSize.height,
      width: double.infinity,
      // width: 200,
      child: ListView(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        // itemExtent: 2,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          for (final item in Enumerated.listFrom(items))
            Padding(
              padding: EdgeInsets.only(right: item.index == items.length - 1 ? 0 : 8),
              child: SizedBox(
                width: cardSize.width,
                child: Hero(
                  tag: getKeyFor(item.value),
                  child: cardBuilder(
                    context,
                    item.value,
                    item.index,
                    () => Get.dialog(
                      ExpandedCardDialogView(
                        // heroTag: getKeyFor(item.value),
                        heroTag: null,
                        builder: (context) => expandedCardBuilder(context, item.value, item.index),
                      ),
                      // opaque: false,
                      // transition: Transition.downToUp,
                      // duration: Duration(milliseconds: 500),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  String getKeyFor(T item) => [item.runtimeType, keyFor(item)].join('-');
}
