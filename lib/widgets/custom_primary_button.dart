import 'package:flutter/material.dart';

import '../custom/custom.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.text,
    required this.isEnabled,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled
            ? Theme.of(context).colorScheme.primary
            : CustomColors.disableButtonColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        minimumSize: Size(double.infinity, 50),
        maximumSize: Size(double.infinity, 60),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      ),
      onPressed: isEnabled ? onPressed.call : null,
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      ),
    );
  }
}
