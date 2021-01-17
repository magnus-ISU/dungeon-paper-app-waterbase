import 'package:dungeon_paper/src/redux/shared_preferences/expansion_states.dart';
import 'package:dungeon_paper/src/redux/stores.dart';
import 'package:flutter/material.dart';

class ExpandableList extends StatelessWidget {
  final List<Widget> children;
  final Widget title;
  final String expansionKey;

  const ExpandableList({
    Key key,
    @required this.title,
    @required this.children,
    @required this.expansionKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (count == 0) {
      return null;
    }

    if (title == null) {
      return ListView(
        shrinkWrap: true,
        children: children,
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
      );
    }

    return Container(
      child: ExpansionTile(
        title: title,
        initiallyExpanded: expansionStates.isExpanded(expansionKey),
        expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
        tilePadding: EdgeInsets.only(right: 8),
        onExpansionChanged: _onExpansionChanged(expansionKey),
        children: children,
      ),
    );
  }

  int get count => children.length;

  void Function(bool) _onExpansionChanged(String key) {
    return (value) {
      if (key != null) {
        expansionStates.setExpansion(key, value);
      }
    };
  }

  ExpansionStates get expansionStates =>
      dwStore.state.prefs.settings.expansionStates;
}