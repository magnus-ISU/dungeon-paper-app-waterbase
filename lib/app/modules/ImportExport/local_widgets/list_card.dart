import 'package:dungeon_paper/app/data/models/meta.dart';
import 'package:dungeon_paper/app/modules/ImportExport/controllers/import_export_controller.dart';
import 'package:dungeon_paper/app/widgets/atoms/custom_expansion_panel.dart';
import 'package:dungeon_paper/app/widgets/atoms/menu_button.dart';
import 'package:dungeon_paper/i18n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/character.dart';
import '../../../data/models/character_class.dart';
import '../../../data/models/item.dart';
import '../../../data/models/move.dart';
import '../../../data/models/race.dart';
import '../../../data/models/spell.dart';

class ListCard<T extends WithMeta, C extends ImportExportSelectionData>
    extends GetView<C> {
  const ListCard({
    super.key,
  });

  List<T> get list => controller.listByType<T>();

  String _getType(Type type) {
    switch (type) {
      case Character:
        return 'Character';
      case Move:
        return 'Move';
      case Spell:
        return 'Spell';
      case Item:
        return 'Item';
      case Race:
        return 'Race';
      case CharacterClass:
        return 'CharacterClass';
    }
    return type.toString();
  }

  String get typeName => _getType(T);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Obx(
      () => Card(
        margin: const EdgeInsets.only(top: 16),
        child: CustomExpansionPanel(
          initiallyExpanded: true,
          title: Row(
            children: [
              Icon(
                Meta.genericIconFor(T),
                color: textTheme.titleLarge!.color,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  tr.generic.myEntity(tr.entityPlural(typeName)),
                  style: textTheme.titleLarge,
                ),
              ),
            ],
          ),
          trailing: [
            MenuButton<bool>(
              items: [
                MenuEntry<bool>(
                  value: true,
                  icon: const Icon(Icons.select_all),
                  label: Text(tr.generic.selectAll),
                  onSelect: () => controller.toggleAll<T>(true),
                ),
                MenuEntry<bool>(
                  value: false,
                  icon: const Icon(Icons.clear),
                  label: Text(tr.generic.selectNone),
                  onSelect: () => controller.toggleAll<T>(false),
                ),
              ],
            ),
          ],
          children: [
            for (final item in list)
              ListTile(
                onTap: () =>
                    controller.toggle<T>(item, !controller.isSelected<T>(item)),
                title: Text(item.displayName),
                leading: Checkbox(
                  value: controller.isSelected<T>(item),
                  onChanged: (state) => controller.toggle<T>(item, state!),
                ),
              ),
            if (list.isEmpty)
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  tr.generic.noEntity(tr.entityPlural(typeName)),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
