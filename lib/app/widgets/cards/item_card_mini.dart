import 'package:dungeon_paper/app/data/models/item.dart';
import 'package:dungeon_paper/app/widgets/chips/item_amount_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/item_armor_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/item_damage_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/item_weight_chip.dart';
import 'package:flutter/material.dart';

import 'dynamic_action_card_mini.dart';

class ItemCardMini extends StatelessWidget {
  const ItemCardMini({
    Key? key,
    required this.item,
    this.showStar = true,
    this.showIcon = true,
    this.onSave,
    this.onTap,
  }) : super(key: key);

  final Item item;
  final bool showStar;
  final bool showIcon;
  final void Function(Item item)? onSave;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return DynamicActionCardMini(
      title: item.name,
      description: item.description,
      chips: [
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
        if (item.amount != 1) ItemAmountChip(item: item),
      ],
      dice: const [],
      icon: showIcon ? Icon(item.icon, size: 16) : null,
      starred: item.equipped,
      showStar: showStar,
      onStarChanged: (equipped) => onSave?.call(item.copyWithInherited(equipped: equipped)),
      onTap: onTap,
    );
  }
}
