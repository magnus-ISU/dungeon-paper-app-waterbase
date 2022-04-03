import 'package:dungeon_paper/app/data/models/alignment.dart';
import 'package:dungeon_paper/app/data/models/character.dart';
import 'package:dungeon_paper/app/data/models/character_class.dart';
import 'package:dungeon_paper/app/data/models/character_stats.dart';
import 'package:dungeon_paper/app/data/models/gear_choice.dart';
import 'package:dungeon_paper/app/data/models/gear_selection.dart';
import 'package:dungeon_paper/app/data/models/item.dart';
import 'package:dungeon_paper/app/data/models/monster.dart';
import 'package:dungeon_paper/app/data/models/move.dart';
import 'package:dungeon_paper/app/data/models/note.dart';
import 'package:dungeon_paper/app/data/models/race.dart';
import 'package:dungeon_paper/app/data/models/spell.dart';
import 'package:dungeon_world_data/gear_option.dart';
import 'package:dungeon_world_data/dungeon_world_data.dart' as dw;

String keyFor<T>(T object) {
  final dyn = object as dynamic;
  switch (T) {
    case AlignmentValue:
    case CharacterClass:
    case CharacterStats:
    case Character:
    case GearChoice:
    case GearSelection:
    case GearOption:
    case Item:
    case Monster:
    case Move:
    case Note:
    case Race:
    case Spell:
      return dyn.key;
    case dw.Tag:
      return dyn.name;
  }
  throw TypeError();
}

String nameFor<T>(T object) {
  final dyn = object as dynamic;
  switch (T) {
    case CharacterClass:
    case Character:
    case Item:
    case Monster:
    case Move:
    case Race:
    case Spell:
    case dw.Tag:
      return dyn.name;
    case AlignmentValue:
      return dyn.description;
    case Note:
      return dyn.title;
  }
  throw TypeError();
}
