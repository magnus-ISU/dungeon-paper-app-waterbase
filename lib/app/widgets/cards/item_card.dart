import 'package:dungeon_paper/app/widgets/atoms/custom_expansion_tile.dart';
import 'package:dungeon_paper/app/widgets/chips/item_amount_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/item_armor_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/item_damage_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/item_weight_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/tag_chip.dart';
import 'package:flutter/material.dart';

import '../../data/models/item.dart';
import 'dynamic_action_card.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.item,
    this.showStar = true,
    this.hideCount = false,
    this.showIcon = true,
    this.onSave,
    this.initiallyExpanded,
    this.actions = const [],
    this.expansionKey,
    this.maxContentHeight,
    this.expandable = true,
    this.onExpansion,
    this.highlightWords = const [],
    this.reorderablePadding = false,
  }) : super(key: key);

  final Item item;
  final bool showStar;
  final bool hideCount;
  final bool showIcon;
  final bool? initiallyExpanded;
  final void Function(Item item)? onSave;
  final Iterable<Widget> actions;
  final PageStorageKey? expansionKey;
  final double? maxContentHeight;
  final bool expandable;
  final CancellableValueChanged<bool>? onExpansion;
  final List<String> highlightWords;
  final bool reorderablePadding;

  @override
  Widget build(BuildContext context) {
    return DynamicActionCard(
      initiallyExpanded: initiallyExpanded,
      title: item.name,
      description: item.description,
      maxContentHeight: maxContentHeight,
      expandable: expandable,
      onExpansion: onExpansion,
      explanation: '',
      reorderablePadding: reorderablePadding,
      leading: [
        if (item.damage != 0) ...[
          ItemDamageChip(item: item),
          const SizedBox(width: 4),
        ],
        if (item.weight > 0) ...[
          ItemWeightChip(item: item),
          const SizedBox(width: 4),
        ],
        if (item.armor > 0) ...[
          ItemArmorChip(item: item),
          const SizedBox(width: 4),
        ],
        if (!hideCount && item.amount != 1) ItemAmountChip(item: item),
      ],
      chips: item.tags.map((t) => TagChip.openDescription(tag: t)),
      dice: const [],
      icon: showIcon ? Icon(item.icon, size: 16) : null,
      starred: item.equipped,
      showStar: showStar,
      onStarChanged: (equipped) => onSave?.call(item.copyWithInherited(equipped: equipped)),
      actions: actions,
      expansionKey: expansionKey ?? PageStorageKey(item.key),
      highlightWords: highlightWords,
    );
  }
}
