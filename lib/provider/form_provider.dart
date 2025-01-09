import 'package:anamnesis/helpers/dialog_confirm.dart';
import 'package:flutter/material.dart';

import '../page/page.dart';

/// [FormProvider] class is used to provide the form data to the application.
class FormProvider with ChangeNotifier {
  /// [operationsController] is used to control the operations text field.
  final TextEditingController operationsController = TextEditingController();

  /// [diseaseController] is used to control the disease text field.
  final TextEditingController diseaseController = TextEditingController();

  /// [painController] is used to control the pain toggle.
  final TextEditingController painController = TextEditingController()
    ..text = 'No';

  /// [toldController] is used to control the told toggle.
  final TextEditingController toldController = TextEditingController()
    ..text = 'No';

  /// [operationsFormKey] is used to control the operations form key.
  GlobalKey<FormState> operationsFormKey = GlobalKey<FormState>();

  /// [diseaseFormKey] is used to control the disease form key.
  GlobalKey<FormState> diseaseFormKey = GlobalKey<FormState>();

  /// [numPages] is used to store the number of pages.
  int numPages = 2;

  /// [currentPage] is used to store the current page.
  int currentPage = 0;

  /// [isPageValid] is used to check if the page is valid.
  bool isPageValid = false;

  /// [isNavegationDone] is used to check if the navigation is done.
  bool isNavegationDone = false;

  /// [listObserver] is used to store the list of toggle widgets.
  List<Widget> listObserver = <Widget>[
    Text('Si'),
    Text('No'),
  ];

  /// [selectedlistObserver] is used to store the selected list of toggle widgets.
  final List<bool> selectedlistObserver = <bool>[false, true];

  /// [selectedlistObserver2] is used to store the selected list of toggle widgets.
  final List<bool> selectedlistObserver2 = <bool>[false, true];

  /// [changeToggleSelectec] is used to change the selected toggle.
  void changeToggleSelectec(
      int index, TextEditingController controller, List<bool> selectedlist) {
    for (int i = 0; i < selectedlist.length; i++) {
      selectedlist[i] = i == index;
      controller.text = (listObserver[index] as Text).data ?? '';
    }
    notifyListeners();
  }

  /// [validateForm] is used to validate the form.
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

  /// [navigateToNextStage] is used to navigate to the next stage.
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

  /// [navigateToBackStage] is used to navigate to the back stage.
  void navigateToBackStage() {
    if (currentPage < numPages && currentPage > 0) {
      currentPage--;
      notifyListeners();
    }
  }

  /// [dispose] is used to dispose the controllers.
  @override
  void dispose() {
    operationsController.dispose();
    diseaseController.dispose();
    painController.dispose();
    toldController.dispose();
    super.dispose();
  }
}
