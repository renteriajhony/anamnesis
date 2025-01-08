import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/form_provider.dart';
import '../tokens/tokens.dart';

class CustomToggleButton extends StatelessWidget {
  CustomToggleButton(
      {super.key, required this.controller, required this.isSelected});
  TextEditingController controller;
  List<bool> isSelected;

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: true);
    return ToggleButtons(
      direction: Axis.horizontal,
      onPressed: (int index) {
        formProvider.changeToggleSelectec(index, controller, isSelected);
      },
      borderRadius: const BorderRadius.all(Radius.circular(1)),
      selectedBorderColor: CustomColors.toggleSelectedColor,
      selectedColor: Colors.white,
      fillColor: CustomColors.toggleSelectedColor.withValues(alpha: 0.05),
      color: Colors.white,
      constraints: BoxConstraints(
        minWidth: ((MediaQuery.of(context).size.width - 47) / 2),
        minHeight: 40.0,
      ),
      isSelected: isSelected,
      children: formProvider.listObserver,
    );
  }
}
