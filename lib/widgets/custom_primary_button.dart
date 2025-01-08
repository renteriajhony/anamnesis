import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../anamnesis.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: true);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: formProvider.isPageValid
            ? Theme.of(context).colorScheme.primary
            : CustomColors.disableButtonColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        minimumSize: Size(double.infinity, 50),
        maximumSize: Size(double.infinity, 60),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      ),
      onPressed: formProvider.isPageValid ? onPressed.call : null,
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      ),
    );
  }
}
