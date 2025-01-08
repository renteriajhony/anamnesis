import 'package:flutter/material.dart';

class DialogConfirm {
  DialogConfirm({
    required this.title,
    required this.content,
    required this.textAfirmitive,
    required this.textNegative,
    required this.onAfirmitive,
  });

  String title;
  String content;
  String textAfirmitive;
  String textNegative;
  VoidCallback onAfirmitive;

  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).dialogBackgroundColor,
          title: Text(title),
          content: Text(
            content,
            style: TextStyle(
              fontFamily: "Futura",
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(textNegative),
            ),
            TextButton(
              onPressed: () {
                onAfirmitive.call();
              },
              child: Text(textAfirmitive),
            ),
          ],
        );
      },
    );
  }
}
