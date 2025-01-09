import 'package:anamnesis/anamnesis.dart';
import 'package:flutter/material.dart';
/// [DialogConfirm] class is used to create a custom dialog confirm for the application.
class DialogConfirm {
  DialogConfirm({
    required this.title,
    required this.content,
    required this.textAfirmitive,
    required this.textNegative,
    required this.onAfirmitive,
  });
  /// [title] is used to display the dialog title.
  String title;
  /// [content] is used to display the dialog content.
  String content;
  /// [textAfirmitive] is used to display the dialog afirmitive button text.
  String textAfirmitive;
  /// [textNegative] is used to display the dialog negative button text.
  String textNegative;
  /// [onAfirmitive] is used to handle the afirmitive button press event.
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
              fontFamily: FontFamilt.futura,
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
