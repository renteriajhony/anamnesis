import 'package:anamnesis/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/form_provider.dart';

class AnamnesisStep2 extends StatelessWidget {
  const AnamnesisStep2({super.key});
  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context, listen: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          maxLines: 2,
          text: TextSpan(
            text: '¿Tiene dolores frecuentes y no ha consultado al médico?',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Futura Bk BT',
            ),
            children: <TextSpan>[
              TextSpan(
                  text: '*',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Futura Bk BT',
                    color: Theme.of(context).colorScheme.error,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        CustomToggleButton(
          controller: formProvider.painController,
          isSelected: formProvider.selectedlistObserver,
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
            children: <TextSpan>[
              TextSpan(
                  text: '*',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Futura Bk BT',
                    color: Theme.of(context).colorScheme.error,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        CustomToggleButton(
          controller: formProvider.toldController,
          isSelected: formProvider.selectedlistObserver2,
        ),
      ],
    );
  }
}
