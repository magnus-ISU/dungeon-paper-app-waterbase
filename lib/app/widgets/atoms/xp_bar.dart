import 'package:dungeon_paper/app/data/services/character_service.dart';
import 'package:dungeon_paper/app/widgets/atoms/buffer_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';

class ExpBar extends StatelessWidget with CharacterServiceMixin {
  const ExpBar({
    super.key,
    this.currentXp,
    this.maxXp,
    this.pendingXp,
  });

  final int? currentXp;
  final int? maxXp;
  final int? pendingXp;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final char = maybeChar;
        final maxValue = maxXp ?? char?.maxXp;
        final curValue = currentXp ?? char?.currentXp ?? 0;

        final curPercent = maxValue != null ? curValue / maxValue : 0.0;
        final curPending = char != null ? pendingXp ?? char.pendingXp : 0;
        final curBuffer = char != null ? curValue + (curPending) : 0;
        final curBufferPercent = curBuffer / (maxValue ?? double.infinity);

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BufferProgressBar(
              value: curPercent,
              bufferValue: curBufferPercent,
              bufferColor: const Color.fromARGB(255, 117, 188, 251),
              height: 17.5,
              color: const Color(0xff1e88e5),
              backgroundColor: Colors.blue[100],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.current.characterBarXp),
                const SizedBox(width: 8),
                Text(
                  curValue.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('/' + (maxValue?.toString() ?? '-')),
                if (curPending > 0)
                  Text(
                    '(+$curPending)',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
              ],
            )
          ],
        );
      },
    );
  }
}
