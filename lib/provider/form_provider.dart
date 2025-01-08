import 'dart:developer';

import 'package:flutter/material.dart';

class FormProvider with ChangeNotifier {
  final TextEditingController operationsController = TextEditingController();
  final TextEditingController diseaseController = TextEditingController();
  final TextEditingController painController = TextEditingController()
    ..text = 'No';
  final TextEditingController toldController = TextEditingController()
    ..text = 'No';
  int numPages = 2;
  int currentPage = 0;
  bool isPageValid = false;
  bool isNavegationDone = false;

  bool validateForm() {
    if (operationsController.text.isNotEmpty &&
        diseaseController.text.isNotEmpty) {
      isPageValid = true;
    } else {
      isPageValid = false;
    }
    notifyListeners();
    print('isPageValid: $isPageValid');

    return isPageValid;
  }

  void navigateToNextStage() {
    if (currentPage < numPages - 1 && validateForm()) {
      currentPage++;
      currentPage == numPages - 1
          ? isNavegationDone = true
          : isNavegationDone = false;
      notifyListeners();
    } else {
      log('Result form', name: 'Show Resulht');
    }
  }

  void navigateToBackStage() {
    if (currentPage < numPages && currentPage > 0) {
      currentPage--;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    operationsController.dispose();
    diseaseController.dispose();
    painController.dispose();
    toldController.dispose();
    super.dispose();
  }
}
