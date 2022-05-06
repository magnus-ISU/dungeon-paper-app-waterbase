import 'package:dungeon_paper/app/data/models/roll_stats.dart';
import 'package:dungeon_paper/app/modules/RollStatsForm/controllers/roll_stats_form_controller.dart';
import 'package:dungeon_paper/app/widgets/atoms/advanced_floating_action_button.dart';
import 'package:dungeon_paper/app/widgets/atoms/confirm_exit_view.dart';
import 'package:dungeon_paper/app/widgets/atoms/number_text_field.dart';
import 'package:dungeon_paper/core/utils/list_utils.dart';
import 'package:dungeon_paper/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RollStatsFormView extends GetView<RollStatsFormController> {
  const RollStatsFormView({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final void Function(RollStats rollStats) onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ConfirmExitView(
        dirty: controller.dirty.value,
        child: Scaffold(
          appBar: AppBar(
            // TODO intl
            title: const Text('Basic Information'),
            centerTitle: true,
          ),
          floatingActionButton: AdvancedFloatingActionButton.extended(
            onPressed: _save,
            label: Text(S.current.save),
            icon: const Icon(Icons.save),
          ),
          body: ReorderableListView(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            onReorder: (int oldIndex, int newIndex) {
              controller.rollStats.value = controller.rollStats.value
                  .copyWith(stats: reorder(controller.rollStats.value.stats, oldIndex, newIndex));
            },
            children: sortByPredefined(
              controller.textControllers.keys.toList(),
              order: controller.rollStats.value.stats.map((stat) => stat.key).toList(),
            ).map(
              (statKey) {
                final stat =
                    controller.rollStats.value.stats.firstWhere((stat) => stat.key == statKey);
                return Padding(
                  key: Key('stat-$statKey'),
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(stat.name),
                                Text(stat.description),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: NumberTextField(
                              controller: controller.textControllers[stat.key],
                              minValue: 1,
                              maxValue: 20,
                              numberType: NumberType.int,
                              // onChanged: (val) => updateControllers(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }

  _save() {
    onChanged(controller.rollStats.value);
    Get.back();
  }
}
