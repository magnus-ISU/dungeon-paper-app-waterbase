import 'package:dungeon_paper/app/data/models/ability_scores.dart';
import 'package:dungeon_paper/app/data/models/character_stats.dart';
import 'package:dungeon_paper/app/data/models/session_marks.dart';
import 'package:dungeon_paper/app/data/services/character_service.dart';
import 'package:dungeon_paper/app/widgets/atoms/custom_expansion_tile.dart';
import 'package:dungeon_paper/app/widgets/atoms/xp_bar.dart';
import 'package:dungeon_paper/app/widgets/atoms/number_text_field.dart';
import 'package:dungeon_paper/app/widgets/chips/primary_chip.dart';
import 'package:dungeon_paper/app/widgets/molecules/dialog_controls.dart';
import 'package:dungeon_paper/core/platform_helper.dart';
import 'package:dungeon_paper/core/utils/list_utils.dart';
import 'package:dungeon_paper/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

enum _XPAction { endSession, levelUp, overrideXP }

class EXPDialog extends StatefulWidget {
  const EXPDialog({super.key});

  @override
  State<EXPDialog> createState() => _EXPDialogState();
}

class _EXPDialogState extends State<EXPDialog> with CharacterServiceMixin {
  late TextEditingController overrideXp;
  late TextEditingController overrideLevel;
  late List<SessionMark> eosMarks;
  bool manualExpExpanded = false;
  bool shouldResetSessionMarks = false;
  int selectedAbilityScoreIndex = 0;

  final endSessionCollapseController = CustomExpansionTileController();
  final levelUpCollapseController = CustomExpansionTileController();
  final overrideXPCollapseController = CustomExpansionTileController();
  _XPAction action = _XPAction.endSession;
  late CustomExpansionTileController lastActionController;

  @override
  void initState() {
    overrideXp = TextEditingController(text: char.currentXp.toString())..addListener(() => setState(() {}));
    overrideLevel = TextEditingController(text: currentLevel.toString())..addListener(() => setState(() {}));
    eosMarks = char.endOfSessionMarks;
    lastActionController = endSessionCollapseController;
    var maxStat = -2147483648; // Lazy way to avoid dealing with max/min, if the first stat was 18 for example
    for (var i = 0; i < char.abilityScores.stats.length; i += 1) {
      final statValue = char.abilityScores.stats[i].value;
      if (statValue > maxStat && statValue < 18) {
        selectedAbilityScoreIndex = i;
        maxStat = statValue;
      }
    }
    super.initState();
  }

  @override
  void dispose() {
    overrideLevel.dispose();
    overrideXp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const dialogWidth = 400.0;

    return AlertDialog(
      title: Text(action.title),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: dialogWidth,
              child: ExpBar(
                currentXp: int.tryParse(overrideXp.text) ?? currentXp,
                maxXp: maxXp,
                pendingXp: !shouldResetSessionMarks || (!shouldOverrideXp && !shouldOverrideLevel) ? totalPendingXp : 0,
              ),
            ),
            const SizedBox(height: 24),
            AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: dialogWidth,
                height: action == _XPAction.endSession ? (PlatformHelper.isMobile ? 364 : 332) : 48,
                child: CustomExpansionTile(
                  title: const Text('End Session'),
                  initiallyExpanded: true,
                  controller: endSessionCollapseController,
                  expandable: action != _XPAction.endSession,
                  onExpansionChanged: (value) {
                    if (!value) return false;
                    setState(() {
                      lastActionController.collapse();
                      action = _XPAction.endSession;
                      lastActionController = endSessionCollapseController;
                    });
                    return false;
                  },
                  children: [
                    SizedBox(
                      width: dialogWidth,
                      child: ListTile(
                        title: Text(S.current.endOfSessionQuestions),
                        subtitle: Text(S.current.endOfSessionQuestionsSubtitle),
                      ),
                    ),
                    for (final eos in eosMarks)
                      SizedBox(
                        width: dialogWidth,
                        child: CheckboxListTile(
                          value: eos.completed,
                          title: Text(eos.description),
                          controlAffinity: ListTileControlAffinity.leading,
                          dense: true,
                          onChanged: (val) => _toggleEosMark(eos, val),
                        ),
                      ),
                  ],
                )),
            const SizedBox(height: 24),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: dialogWidth,
              height: action == _XPAction.levelUp ? (PlatformHelper.isMobile ? 364 : 332) : 48,
              child: CustomExpansionTile(
                title: const Text('Level Up'),
                controller: levelUpCollapseController,
                expandable: action != _XPAction.levelUp,
                onExpansionChanged: (value) {
                  if (!value) return false;
                  setState(() {
                    lastActionController.collapse();
                    action = _XPAction.levelUp;
                    lastActionController = levelUpCollapseController;
                  });
                  return false;
                },
                children: [
                  const Text('Increase a stat by 1:'),
                  const SizedBox(height: 12),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 380),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Wrap(
                          spacing: 4,
                          runSpacing: 4,
                          children: List.generate(char.abilityScores.stats.length, (i) {
                            final stat = char.abilityScores.stats[i];
                            return GestureDetector(
                              onTap: stat.value < 18
                                  ? () {
                                      setState(() {
                                        selectedAbilityScoreIndex = i;
                                      });
                                    }
                                  : null,
                              child: SizedBox(
                                width: constraints.maxWidth / 3 - 8,
                                child: PrimaryChip(
                                  visualDensity: VisualDensity.comfortable,
                                  label: '${stat.key} ${stat.value}',
                                  icon: Icon(stat.icon),
                                  isEnabled: selectedAbilityScoreIndex == i,
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text('Remember to get a new move also'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: dialogWidth,
              height: action == _XPAction.overrideXP ? (PlatformHelper.isMobile ? 364 : 332) : 48,
              child: CustomExpansionTile(
                title: Text(
                  S.current.xpDialogChangeOverride + (hasOverrides ? '*' : ''),
                ),
                controller: overrideXPCollapseController,
                expandable: action != _XPAction.overrideXP,
                onExpansionChanged: (value) {
                  if (!value) return false;
                  setState(() {
                    lastActionController.collapse();
                    action = _XPAction.overrideXP;
                    lastActionController = overrideXPCollapseController;
                  });
                  return false;
                },
                children: [
                  CheckboxListTile(
                    value: shouldResetSessionMarks,
                    onChanged: (val) => setState(
                      () => shouldResetSessionMarks = val!,
                    ),
                    title: Text(S.current.xpDialogResetSessionMarks),
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  const Divider(height: 32),
                  NumberTextField(
                    controller: overrideXp,
                    numberType: NumberType.int,
                    decoration: InputDecoration(
                      labelText: S.current.xpDialogOverrideXp + (shouldOverrideXp ? '*' : ''),
                    ),
                    minValue: 0,
                  ),
                  const SizedBox(height: 16),
                  NumberTextField(
                    decoration: InputDecoration(
                      labelText: S.current.xpDialogOverrideLevel + (shouldOverrideLevel ? '*' : ''),
                    ),
                    numberType: NumberType.int,
                    controller: overrideLevel,
                    minValue: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: DialogControls.save(
                context,
                onSave: (action == _XPAction.endSession)
                    ? endSession
                    : (action == _XPAction.overrideXP)
                        ? overrideXpAndLevel
                        : (action == _XPAction.levelUp && canLevelUp)
                            ? levelUp
                            : null,
                saveLabel: action.saveButton,
                onCancel: close,
                spacing: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int get currentXp => char.currentXp;
  int get currentLevel => char.stats.level;
  int get maxXp => shouldOverrideLevel
      ? CharacterStats.maxExpForLevel(int.tryParse(overrideLevel.text) ?? currentLevel)
      : char.maxXp;
  int get totalPendingXp => char.sessionMarks.where((mark) => mark.completed).length;
  bool get canLevelUp => currentXp - currentLevel - 7 >= 0;

  bool get shouldOverrideXp => int.tryParse(overrideXp.text) != null && int.parse(overrideXp.text) != currentXp;
  bool get shouldOverrideLevel =>
      int.tryParse(overrideLevel.text) != null && int.parse(overrideLevel.text) != currentLevel;
  bool get hasOverrides => shouldOverrideLevel || shouldOverrideXp || shouldResetSessionMarks;

  void endSession() {
    save(currentXp + totalPendingXp, currentLevel, resetSession: true);
  }

  void levelUp() {
    if (!canLevelUp) return;
    save(
      currentXp - currentLevel - 7,
      currentLevel + 1,
      abilityScoreToIncrease: char.abilityScores.stats[selectedAbilityScoreIndex],
    );
  }

  void overrideXpAndLevel() {
    save(
      int.tryParse(overrideXp.text) ?? 0,
      int.tryParse(overrideLevel.text) ?? currentLevel,
      resetSession: shouldResetSessionMarks,
    );
  }

  void save(int xp, int level, {bool resetSession = false, AbilityScore? abilityScoreToIncrease}) {
    AbilityScores? abilityScores;
    if (abilityScoreToIncrease != null) {
      abilityScores =
          char.abilityScores.copyWithStatValues({abilityScoreToIncrease.key: abilityScoreToIncrease.value + 1});
    }
    charService.updateCharacter(
      char.copyWith(
        abilityScores: abilityScores,
        stats: char.stats.copyWith(
          currentXp: xp,
          level: level,
        ),
        sessionMarks: (resetSession)
            ? char.sessionMarks.map((e) => e.copyWithInherited(completed: false)).toList()
            : upsertByKey(char.sessionMarks, eosMarks),
      ),
    );

    close();
  }

  void close() {
    Get.back();
  }

  void _toggleEosMark(SessionMark eos, bool? val) {
    setState(() {
      eosMarks = updateByKey(eosMarks, [eos.copyWithInherited(completed: val ?? !eos.completed)]);
      charService.updateCharacter(char.copyWith(sessionMarks: upsertByKey(char.sessionMarks, eosMarks)));
    });
  }
}

extension on _XPAction {
  String get title {
    switch (this) {
      case _XPAction.endSession:
        return S.current.xpDialogTitle;
      case _XPAction.levelUp:
        return 'Level Up';
      case _XPAction.overrideXP:
        return S.current.xpDialogTitleOverriding;
    }
  }

  String get saveButton {
    switch (this) {
      case _XPAction.endSession:
        return S.current.xpDialogEndSession;
      case _XPAction.levelUp:
        return 'Level Up';
      case _XPAction.overrideXP:
        return 'Override';
    }
  }
}
