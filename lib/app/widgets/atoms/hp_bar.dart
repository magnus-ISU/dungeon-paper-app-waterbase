import 'package:dungeon_paper/app/modules/Home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';

class HpBar extends StatelessWidget {
  const HpBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final HomeController controller = Get.find();
      var char = controller.current;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: char != null ? char.currentHpPercent : 1,
              minHeight: 17.5,
              color: Colors.red,
              backgroundColor: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.current.characterBarHp),
              const SizedBox(width: 8),
              Text(
                char?.currentHp.toString() ?? '-',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('/' + (char?.maxHp.toString() ?? '-')),
            ],
          )
        ],
      );
    });
  }
}
