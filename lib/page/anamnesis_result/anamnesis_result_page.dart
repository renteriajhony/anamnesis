import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../anamnesis.dart';

class AnamnesisResultPage extends StatelessWidget {
  const AnamnesisResultPage({super.key});
  static const String routeName = '/anamnesis_steps_result';

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 60),
        children: [
          Text(
            'Información registrada',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Futura',
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 16 * 0.04,
            ),
          ),
          const SizedBox(height: 25),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: '¿Ha tenido operaciones? ¿Cuáles y hace cuánto tiempo?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 4,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.operationsController.text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Futura Bk BT',
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text:
                  '¿Tiene o tuvo alguna enfermedad diagnosticada o tratada por un médico?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 4,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.diseaseController.text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Futura Bk BT',
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: '¿Tiene dolores frecuentes y no ha consultado al médico?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 4,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.painController.text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Futura Bk BT',
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 4,
            text: TextSpan(
              text:
                  '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
              ),
              children: <TextSpan>[],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            maxLines: 4,
            text: TextSpan(
              text: 'R// ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Futura Bk BT',
                color: Theme.of(context).colorScheme.error,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: formProvider.toldController.text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Futura Bk BT',
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
