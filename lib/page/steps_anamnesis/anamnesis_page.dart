import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/form_provider.dart';
import 'screens/screens.dart';
import '../../widgets/widgets.dart';

class AnamnesisPage extends StatelessWidget {
  const AnamnesisPage({super.key});
  static const String routeName = '/anamnesis_steps';

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            formProvider.navigateToBackStage();
          },
        ),
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text(
          'Bienvenido a tu nuevo comienzo',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: CustomPrimaryButton(
          onPressed: () {
            formProvider.navigateToNextStage(context);
          },
          text: 'Siguiente',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 22, right: 22, top: 40),
        children: [
          Text(
            'Completa la siguiente información',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Futura',
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 16 * 0.04,
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'Todos los campos son obligatorios',
              style: TextStyle(
                fontFamily: "Futura Bk BT",
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '*',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Futura',
                      color: Theme.of(context).colorScheme.error,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 25),
          formProvider.currentPage == 0 ? AnamnesisStep1() : AnamnesisStep2(),
        ],
      ),
    );
  }
}
