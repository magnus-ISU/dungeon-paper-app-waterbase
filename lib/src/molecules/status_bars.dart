import 'package:dungeon_paper/db/models/character.dart';
import 'package:dungeon_paper/src/dialogs/edit_hp_dialog.dart';
import 'package:dungeon_paper/src/dialogs/edit_xp_dialog.dart';
import 'package:flutter/material.dart';

class StatusBars extends StatelessWidget {
  final Character character;

  const StatusBars({Key key, @required this.character}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (character == null ||
        character.currentHP == null ||
        character.currentXP == null) {
      return Material(
        child: Center(
          child: Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(5),
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    var hpBg = Colors.red.shade100;
    var hpValueColor = Colors.red.shade700;
    var hpPerc = character != null &&
            character.currentHP != null &&
            character.currentHP > 0
        ? character.currentHP / character.maxHP
        : 0;

    var xpBg = Colors.lightBlue.shade100;
    var xpValueColor = Colors.blue;
    var maxXp = character.level + 7;
    var xpPerc = (character?.currentXP ?? 0) > 0
        ? character.currentXP.toDouble() / maxXp.toDouble()
        : 0.0;
    var rounded = Radius.circular(5);

    return Container(
      child: Column(
        children: <Widget>[
          StatusBarCard(
            barBackgroundColor: hpBg,
            barForegroundColor: hpValueColor,
            value: hpPerc,
            minNum: character.currentHP.toString(),
            maxNum: character.maxHP.toString(),
            borderRadius: BorderRadius.vertical(top: rounded),
            labelText: 'HP',
            onTap: () => showHpEditDialog(context, character),
          ),
          SizedBox(height: 1),
          StatusBarCard(
            barBackgroundColor: xpBg,
            barForegroundColor: xpValueColor,
            value: xpPerc,
            minNum: character.currentXP.toString(),
            borderRadius: BorderRadius.vertical(bottom: rounded),
            maxNum: maxXp.toString(),
            labelText: 'XP',
            onTap: () => showXpEditDialog(context, character),
          ),
        ],
      ),
    );
  }

  void showHpEditDialog(BuildContext context, Character character) =>
      showDialog(
          context: context,
          builder: (context) => EditHPDialog(character: character));

  void showXpEditDialog(BuildContext context, Character character) =>
      showDialog(
          context: context,
          builder: (context) => EditXPDialog(character: character));
}

class StatusBarCard extends StatelessWidget {
  const StatusBarCard({
    Key key,
    @required this.barBackgroundColor,
    @required this.barForegroundColor,
    @required this.value,
    @required this.minNum,
    @required this.maxNum,
    @required this.labelText,
    @required this.borderRadius,
    @required this.onTap,
  }) : super(key: key);

  final Color barBackgroundColor;
  final Color barForegroundColor;
  final double value;
  final String minNum;
  final String maxNum;
  final String labelText;
  final BorderRadiusGeometry borderRadius;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      elevation: 1,
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: StatusBarInfo(
            barBackgroundColor: barBackgroundColor,
            barForegroundColor: barForegroundColor,
            value: value,
            minNum: minNum,
            maxNum: maxNum,
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}

class StatusBarInfo extends StatelessWidget {
  static const double _PROGRESS_HEIGHT = 20;
  static const double _VALUE_WIDTH = 80;
  static const valueStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const labelStyle =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w300, letterSpacing: -1);

  const StatusBarInfo({
    Key key,
    @required this.barBackgroundColor,
    @required this.barForegroundColor,
    @required this.value,
    @required this.minNum,
    @required this.maxNum,
    this.labelText,
  }) : super(key: key);

  final Color barBackgroundColor;
  final Color barForegroundColor;
  final double value;
  final String minNum;
  final String maxNum;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    List labels = <Widget>[
      SizedBox(
        width: _VALUE_WIDTH,
        child: Center(
          child: Text('$minNum/$maxNum', style: valueStyle),
        ),
      )
    ];
    if (labelText != null) {
      labels = <Widget>[Text(labelText, style: labelStyle)] + labels;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      child: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: labels,
          ),
          Expanded(
            child: SizedBox(
              height: _PROGRESS_HEIGHT,
              child: LinearProgressIndicator(
                backgroundColor: barBackgroundColor,
                valueColor: AlwaysStoppedAnimation(barForegroundColor),
                value: value,
                // onEditUpdate: (value) => dwStore.dispatch(
                //     CharacterActions.updateField('currentHP',
                //         (value * character.maxHP).round())),
                // onEditEnd: (value) => updateCharacter({
                //       'currentHP': (value * character.maxHP).round()
                //    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
