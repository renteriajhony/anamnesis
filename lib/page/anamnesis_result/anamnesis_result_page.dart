import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../anamnesis.dart';

/// [AnamnesisResultPage] class is used to display the result of the anamnesis steps.
/// It displays the information that the user has entered in the anamnesis steps.
class AnamnesisResultPage extends StatelessWidget {
  const AnamnesisResultPage({super.key});
  static const String routeName = '/anamnesis_steps_result';

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
            left: DimensionsDouble.twentyTwo,
            right: DimensionsDouble.twentyTwo,
            top: DimensionsDouble.sixty),
        children: [
          Text(
            'Información registrada',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: FontFamilt.futura,
              fontSize: DimensionsDouble.sixteen,
              fontWeight: FontWeight.w500,
              letterSpacing: DimensionsDouble.sixteen * 0.04,
            ),
          ),
          const SizedBox(height: DimensionsDouble.twentyFive),
          RichText(
            maxLines: DimensionsInt.one,
            text: TextSpan(
              text: '¿Ha tenido operaciones? ¿Cuáles y hace cuánto tiempo?',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.four,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.operationsController.text,
                    style: TextStyle(
                      fontSize: DimensionsDouble.fourteen,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamilt.futuraBkBt,
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.two,
            text: TextSpan(
              text:
                  '¿Tiene o tuvo alguna enfermedad diagnosticada o tratada por un médico?',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.four,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.diseaseController.text,
                    style: TextStyle(
                      fontSize: DimensionsDouble.fourteen,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamilt.futuraBkBt,
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.two,
            text: TextSpan(
              text: '¿Tiene dolores frecuentes y no ha consultado al médico?',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.four,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.painController.text,
                    style: TextStyle(
                      fontSize: DimensionsDouble.fourteen,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamilt.futuraBkBt,
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.four,
            text: TextSpan(
              text:
                  '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: DimensionsDouble.sixteen,
          ),
          RichText(
            maxLines: DimensionsInt.four,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: DimensionsDouble.fourteen,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamilt.futuraBkBt,
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.toldController.text,
                    style: TextStyle(
                      fontSize: DimensionsDouble.fourteen,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamilt.futuraBkBt,
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
