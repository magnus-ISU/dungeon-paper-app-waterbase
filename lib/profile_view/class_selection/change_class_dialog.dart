import 'package:dungeon_paper/components/card_list_item.dart';
import 'package:dungeon_paper/components/class_description.dart';
import 'package:dungeon_paper/components/confirmation_dialog.dart';
import 'package:dungeon_paper/db/character.dart';
import 'package:dungeon_paper/redux/stores/stores.dart';
import 'package:dungeon_world_data/dw_data.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:flutter/material.dart';

class ClassSelectionScreen extends StatefulWidget {
  @override
  _ClassSelectionScreenState createState() => _ClassSelectionScreenState();
}

class _ClassSelectionScreenState extends State<ClassSelectionScreen> {
  ScrollController scrollController = ScrollController();
  double appBarElevation = 0.0;

  @override
  void initState() {
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Choose Class'),
        elevation: appBarElevation,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: dungeonWorld.classes.values
                .map(
                  (availClass) => Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: CardListItem(
                      title: Text(availClass.name),
                      subtitle: Text('Preview class'),
                      leading: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(Icons.person, size: 40.0),
                      ),
                      trailing: Icon(Icons.chevron_right),
                      onTap: previewClass(availClass),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Function() previewClass(PlayerClass def) {
    return () async {
      try {
        bool res = await Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => ClassPreview(classDef: def),
          ),
        );
        if (res == true) {
          Navigator.pop(context, res);
        }
      } catch (e) {
        print(e);
        Navigator.pop(context, false);
      }
    };
  }

  void scrollListener() {
    double newElevation = scrollController.offset > 16.0 ? 1.0 : 0.0;
    if (newElevation != appBarElevation) {
      setState(() {
        appBarElevation = newElevation;
      });
    }
  }
}

class ClassPreview extends StatefulWidget {
  final PlayerClass classDef;

  const ClassPreview({
    Key key,
    @required this.classDef,
  }) : super(key: key);

  @override
  _ClassPreviewState createState() => _ClassPreviewState();
}

class _ClassPreviewState extends State<ClassPreview> {
  ScrollController scrollController = ScrollController();
  double appBarElevation = 0.0;

  @override
  void initState() {
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cls = widget.classDef;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(cls.name),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('Choose'),
              color: Theme.of(context).canvasColor,
              onPressed: () => chooseThisClass(),
            ),
          )
        ],
        elevation: appBarElevation,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClassDescription(classDef: cls),
      )),
    );
  }

  void chooseThisClass() async {
    ChangeClassConfirmationOptions options = await showDialog(
      context: context,
      builder: (context) => ConfirmClassChangeDialog(),
    );
    if (options != null) {
      save(options);
      Navigator.pop(context, true);
    }
  }

  void save(ChangeClassConfirmationOptions options) {
    DbCharacter character = dwStore.state.characters.current;
    character.mainClass = widget.classDef;
    character.looks = [];
    character.race = null;
    List<CharacterKeys> keys = [
      CharacterKeys.looks,
      CharacterKeys.race,
      CharacterKeys.mainClass
    ];

    if (options.deleteMoves) {
      character.moves = <Move>[];
      keys.add(CharacterKeys.moves);
    }
    if (options.resetXP) {
      character.level = 1;
      character.currentXP = 0;
      keys.addAll([CharacterKeys.level, CharacterKeys.currentXP]);
    }
    if (options.resetMaxHP) {
      character.maxHP = character.defaultMaxHP;
      character.currentHP = character.maxHP;
      keys.addAll([CharacterKeys.currentHP, CharacterKeys.maxHP]);
    }
    if (options.resetHitDice) {
      character.hitDice = widget.classDef.damage;
      keys.add(CharacterKeys.hitDice);
    }

    updateCharacter(character, keys);
  }

  void scrollListener() {
    double newElevation = scrollController.offset > 16.0 ? 1.0 : 0.0;
    if (newElevation != appBarElevation) {
      setState(() {
        appBarElevation = newElevation;
      });
    }
  }
}

class ConfirmClassChangeDialog extends StatefulWidget {
  const ConfirmClassChangeDialog({
    Key key,
  }) : super(key: key);

  @override
  _ConfirmClassChangeDialogState createState() =>
      _ConfirmClassChangeDialogState();
}

class _ConfirmClassChangeDialogState extends State<ConfirmClassChangeDialog> {
  ChangeClassConfirmationOptions options;

  @override
  void initState() {
    options = ChangeClassConfirmationOptions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConfirmationDialog(
        title: Text('Change Class?'),
        okButtonText: Text("I'm sure, let's do this"),
        cancelButtonText: Text('Wait, not yet'),
        returnValue: (bool confirmed) {
          return confirmed ? options : null;
        },
        text: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0)
                  .copyWith(bottom: 40.0),
              child: Text(
                  'Please confirm your selection.\n\nPlease note: race and looks will automatically reset.'),
            ),
            checkboxRow(
              'Remove all previous moves from current class',
              options.deleteMoves,
              toggleDeleteMoves,
            ),
            checkboxRow(
              'Set level to 1 and XP to 0',
              options.resetXP,
              toggleResetXP,
            ),
            checkboxRow(
              'Reset Max HP to match this class',
              options.resetMaxHP,
              toggleResetMaxHP,
            ),
            checkboxRow(
              'Update hit dice to match this class',
              options.resetHitDice,
              toggleUpdateHitDice,
            ),
          ],
        ));
  }

  Widget checkboxRow(String text, bool value, ValueChanged<bool> onChanged) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: value ?? false,
          onChanged: onChanged,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => onChanged(!value),
            child: Text(text),
          ),
        ),
      ],
    );
  }

  void toggleDeleteMoves(bool state) {
    setState(() {
      options.deleteMoves = state;
    });
  }

  void toggleResetXP(bool state) {
    setState(() {
      options.resetXP = state;
    });
  }

  void toggleResetMaxHP(bool state) {
    setState(() {
      options.resetMaxHP = state;
    });
  }

  void toggleUpdateHitDice(bool state) {
    setState(() {
      options.resetHitDice = state;
    });
  }
}

class ChangeClassConfirmationOptions {
  bool deleteMoves;
  bool resetXP;
  bool resetMaxHP;
  bool resetHitDice;

  ChangeClassConfirmationOptions({
    this.deleteMoves = false,
    this.resetXP = false,
    this.resetMaxHP = false,
    this.resetHitDice = false,
  });
}
