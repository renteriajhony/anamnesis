import 'package:anamnesis/anamnesis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
/// [AnamnesisPage] class is used to create an anamnesis page for the application.
/// This page is used to display the anamnesis steps.
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
        padding: const EdgeInsets.symmetric(
          horizontal: DimensionsDouble.twentyTwo,
        ),
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
        padding: const EdgeInsets.only(
            left: DimensionsDouble.twentyTwo,
            right: DimensionsDouble.twentyTwo,
            top: DimensionsDouble.forty),
        children: [
          Text(
            'Completa la siguiente información',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Futura',
              fontSize: DimensionsDouble.sixteen,
              fontWeight: FontWeight.w500,
              letterSpacing: DimensionsDouble.sixteen * 0.04,
            ),
          ),
          const SizedBox(height: DimensionsDouble.ten),
          RichText(
            text: TextSpan(
              text: 'Todos los campos son obligatorios',
              style: TextStyle(
                fontFamily: FontFamilt.futuraLtBt,
                fontSize: DimensionsDouble.sixteen,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '*',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: DimensionsDouble.sixteen,
                      fontFamily: FontFamilt.futuraLtBt,
                      color: Theme.of(context).colorScheme.error,
                    )),
              ],
            ),
          ),
          const SizedBox(height: DimensionsDouble.twentyFive),
          formProvider.currentPage == 0 ? AnamnesisStep1() : AnamnesisStep2(),
        ],
      ),
    );
  }
}
