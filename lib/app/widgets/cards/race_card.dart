import 'package:dungeon_paper/app/widgets/atoms/custom_expansion_tile.dart';
import 'package:dungeon_paper/app/widgets/chips/move_category_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/primary_chip.dart';
import 'package:dungeon_paper/app/widgets/chips/tag_chip.dart';
import 'package:flutter/material.dart';

import '../../data/models/race.dart';
import 'dynamic_action_card.dart';

class RaceCard extends StatelessWidget {
  const RaceCard({
    Key? key,
    required this.race,
    this.onSave,
    this.showStar = true,
    this.showIcon = true,
    this.initiallyExpanded,
    this.actions = const [],
    this.expansionKey,
    this.maxContentHeight,
    this.expandable = true,
    this.onExpansion,
    this.advancedLevelDisplay = AdvancedLevelDisplay.short,
    this.highlightWords = const [],
    this.showClasses = false,
  }) : super(key: key);

  final Race race;
  final void Function(Race race)? onSave;
  final bool showStar;
  final bool showIcon;
  final bool? initiallyExpanded;
  final Iterable<Widget> actions;
  final PageStorageKey? expansionKey;
  final double? maxContentHeight;
  final bool expandable;
  final CancellableValueChanged<bool>? onExpansion;
  final AdvancedLevelDisplay advancedLevelDisplay;
  final List<String> highlightWords;
  final bool showClasses;

  @override
  Widget build(BuildContext context) {
    return DynamicActionCard(
      title: race.name,
      description: race.description,
      explanation: race.explanation,
      maxContentHeight: maxContentHeight,
      expandable: expandable,
      onExpansion: onExpansion,
      expansionKey: expansionKey ?? PageStorageKey(race.key),
      chips: race.tags.map((t) => TagChip.openDescription(tag: t)),
      dice: const [],
      icon: showIcon ? Icon(race.icon, size: 16) : null,
      starred: race.favorite,
      showStar: showStar,
      onStarChanged: (favorite) => onSave?.call(race.copyWithInherited(favorite: favorite)),
      initiallyExpanded: initiallyExpanded,
      actions: actions,
      highlightWords: highlightWords,
      leading: showClasses && race.classKeys.isNotEmpty
          ? [
              PrimaryChip(
                label: race.classKeys.first.name,
                visualDensity: VisualDensity.compact,
              )
            ]
          : const [],
    );
  }
}
