import 'package:flutter/material.dart';

class EditBioCard extends StatelessWidget {
  final TextEditingController controller;

  const EditBioCard({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).canvasColor,
      elevation: 1.0,
      type: MaterialType.card,
      borderRadius: BorderRadius.circular(5.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: 0.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                maxLines: null,
                minLines: 3,
                controller: controller,
                textInputAction: TextInputAction.done,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  labelText: 'Biography',
                  labelStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
                  ),
                  hintText:
                      'Tell us about your character.\nWhere it comes from, their motivation,\nor anything you want.\nGet creative!',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}