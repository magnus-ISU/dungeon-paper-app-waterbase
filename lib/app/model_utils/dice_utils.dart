import 'package:dungeon_paper/app/routes/app_pages.dart';
import 'package:dungeon_paper/core/dw_icons.dart';
import 'package:dungeon_world_data/dungeon_world_data.dart' as dw;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceUtils {
  static Widget iconOf(dw.Dice? tag) => const Icon(DwIcons.dice_d6);

  static void openRollDialog(List<dw.Dice> dice) {
    Get.toNamed(Routes.rollDice, arguments: dice);
  }

  static Offset iconCenterOffset(dw.Dice dice) =>
      {
        4: const Offset(0, 4),
      }[dice.sides] ??
      Offset.zero;
}
