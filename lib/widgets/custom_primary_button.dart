import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../anamnesis.dart';
/// [CustomPrimaryButton] class is used to create a custom primary button for the application.
class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  /// [onPressed] is used to handle the button press event.
  final VoidCallback onPressed;
  /// [text] is used to display the button text.
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
        minimumSize: Size(double.infinity, DimensionsDouble.fifty),
        maximumSize: Size(double.infinity, DimensionsDouble.sixty),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(DimensionsDouble.two)),
        ),
      ),
      onPressed: formProvider.isPageValid ? onPressed.call : null,
      child: Text(
        text,
        style: TextStyle(fontSize: DimensionsDouble.sixteen, fontWeight: FontWeight.w300),
      ),
    );
  }
}
