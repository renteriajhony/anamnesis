import 'package:anamnesis/helpers/dialog_confirm.dart';
import 'package:flutter/material.dart';

import '../page/page.dart';

class FormProvider with ChangeNotifier {
  final TextEditingController operationsController = TextEditingController();
  final TextEditingController diseaseController = TextEditingController();
  final TextEditingController painController = TextEditingController()
    ..text = 'No';
  final TextEditingController toldController = TextEditingController()
    ..text = 'No';

  GlobalKey<FormState> operationsFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> diseaseFormKey = GlobalKey<FormState>();

  int numPages = 2;
  int currentPage = 0;
  bool isPageValid = false;
  bool isNavegationDone = false;

  List<Widget> listObserver = <Widget>[
    Text('Si'),
    Text('No'),
  ];

  final List<bool> selectedlistObserver = <bool>[false, true];
  final List<bool> selectedlistObserver2 = <bool>[false, true];

  void changeToggleSelectec(
      int index, TextEditingController controller, List<bool> selectedlist) {
    for (int i = 0; i < selectedlist.length; i++) {
      selectedlist[i] = i == index;
      controller.text = (listObserver[index] as Text).data ?? '';
    }
    notifyListeners();
  }

  bool validateForm() {
    if (operationsController.text.isNotEmpty &&
        diseaseController.text.isNotEmpty) {
      isPageValid = true;
    } else {
      isPageValid = false;
    }
    notifyListeners();
    return isPageValid;
  }

  void navigateToNextStage(BuildContext context) {
    if (currentPage < numPages - 1 && validateForm()) {
      currentPage++;
      currentPage == numPages - 1
          ? isNavegationDone = true
          : isNavegationDone = false;
      notifyListeners();
    } else {
      DialogConfirm(
        title: '',
        content: 'Tu información sera guardada, ¿Deseas continuar?',
        textAfirmitive: 'Aceptar',
        textNegative: 'Cancelar',
        onAfirmitive: () {
          Navigator.of(context).popAndPushNamed(AnamnesisResultPage.routeName);
        },
      ).show(context);
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
