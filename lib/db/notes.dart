import 'package:dungeon_paper/db/base.dart';
import 'package:dungeon_paper/redux/stores/stores.dart';
import 'character.dart';

// NOT USED...
class Note extends DbBase {
  var defaultData = {
    'category': '',
    'title': '',
    'description': '',
  };

  String get category => get('category');
  String get title => get('title');
  String get description => get('description');

  Note([Map map]) : super(map);
}
// ...NOT USED

Future updateNote(num index, Map note) async {
  if (dwStore.state.characters.current == null) {
    throw('No character loaded.');
  }

  List notes = List.from(dwStore.state.characters.current.notes);
  notes[index] = note;
  await updateCharacter({'notes': notes});
}

Future deleteNote(num index) async {
  if (dwStore.state.characters.current == null) {
    throw('No character loaded.');
  }

  List notes = List.from(dwStore.state.characters.current.notes);
  notes.removeAt(index);
  await updateCharacter({'notes': notes});
}

Future createNote(Map note) async {
  if (dwStore.state.characters.current == null) {
    throw('No character loaded.');
  }

  List notes = List.from(dwStore.state.characters.current.notes);
  notes.add(note);
  await updateCharacter({'notes': notes});
}