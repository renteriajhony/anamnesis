import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/form_provider.dart';
import '../tokens/tokens.dart';

/// [CustomToggleButton] class is used to create a custom toggle button for the application.
class CustomToggleButton extends StatelessWidget {
  CustomToggleButton(
      {super.key, required this.controller, required this.isSelected});

  /// [controller] is used to control the text field.
  TextEditingController controller;

  /// [isSelected] is used to check if the button is selected.
  List<bool> isSelected;

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: true);
    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: (int index) {
        formProvider.changeToggleSelectec(index, controller, isSelected);
      },
      borderRadius:
          const BorderRadius.all(Radius.circular(DimensionsDouble.one)),
      selectedBorderColor: CustomColors.selectedColor,
      selectedColor: Theme.of(context).colorScheme.onSecondary,
      fillColor: CustomColors.selectedColor
          .withValues(alpha: DimensionsOpacity.zeroPointFive),
      color: Theme.of(context).colorScheme.onSecondary,
      constraints: BoxConstraints(
        minWidth:
            ((MediaQuery.of(context).size.width - DimensionsInt.fortySeven) /
                DimensionsInt.two),
        minHeight: DimensionsDouble.forty,
      ),
      isSelected: isSelected,
      children: formProvider.listObserver,
    );
  }
}
