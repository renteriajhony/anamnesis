import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/form_provider.dart';
import '../tokens/tokens.dart';

/// [CustomEditText] class is used to create a custom edit text for the application.
class CustomEditText extends StatelessWidget {
  const CustomEditText({super.key, required this.controller});

  /// [controller] is used to control the text field.
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    return SizedBox(
      width: double.infinity,
      child: TextField(
        maxLines: DimensionsInt.two,
        controller: controller,
        onChanged: (value) {
          formProvider.validateForm();
        },
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontSize: DimensionsDouble.fourteen,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          fontFamily: FontFamilt.futuraLtBt,
          color: Theme.of(context).colorScheme.onSecondary,
          height: DimensionsDouble.one,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: CustomColors.borderSide, width: DimensionsDouble.one),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.selectedColor
                  .withValues(alpha: DimensionsOpacity.fourTenth),
              width: DimensionsDouble.two,
            ),
          ),
          hintText: 'Escribe aquí?',
          hintStyle: TextStyle(
            fontSize: DimensionsDouble.fourteen,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontFamily: FontFamilt.futuraLtBt,
            color: CustomColors.borderSide,
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
