import 'package:dungeon_paper/app/data/models/character_class.dart';
import 'package:dungeon_paper/app/data/models/item.dart';
import 'package:dungeon_paper/app/data/models/move.dart';
import 'package:dungeon_paper/app/data/models/note.dart';
import 'package:dungeon_paper/app/data/models/race.dart';
import 'package:dungeon_paper/app/data/models/spell.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/filters/character_class_filters.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/filters/item_filters.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/filters/move_filters.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/filters/note_filters.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/filters/race_filters.dart';
import 'package:dungeon_paper/app/modules/LibraryList/views/filters/spell_filters.dart';

bool searchFor(Type t, dynamic object, String search) {
  switch (t) {
    case CharacterClass:
      return CharacterClassFilters(search: search).filter(object);
    case Item:
      return ItemFilters(search: search).filter(object);
    case Move:
      return MoveFilters(classKey: null, search: search).filter(object);
    case Spell:
      return SpellFilters(classKey: null, search: search, level: null).filter(object);
    case Note:
      return NoteFilters(search: search).filter(object);
    // case AbilityScore:
    // case Character:
    // case AlignmentValue:
    case Race:
      return RaceFilters(classKey: null, search: search).filter(object);
  }
  throw TypeError();
}

double getScoreFor(Type t, dynamic object, String search) {
  switch (t) {
    case CharacterClass:
      return CharacterClassFilters(search: search).getScore(object);
    case Item:
      return ItemFilters(search: search).getScore(object);
    case Move:
      return MoveFilters(classKey: null, search: search).getScore(object);
    case Spell:
      return SpellFilters(classKey: null, search: search, level: null).getScore(object);
    case Note:
      return NoteFilters(search: search).getScore(object);
    // case AbilityScore:
    // case Character:
    // case AlignmentValue:
    // case Race:
  }
  throw TypeError();
}
