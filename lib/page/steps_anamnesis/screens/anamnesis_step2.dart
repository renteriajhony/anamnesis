import 'package:anamnesis/anamnesis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// [AnamnesisStep1] class is used to create the first step of the anamnesis form.
/// This step is used to ask the user if they have had any operations or diseases.
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
          maxLines: DimensionsInt.two,
          text: TextSpan(
            text: '¿Tiene dolores frecuentes y no ha consultado al médico?',
            style: TextStyle(
              fontSize: DimensionsDouble.fourteen,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamilt.futuraBkBt,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: '*',
                  style: TextStyle(
                    fontSize: DimensionsDouble.sixteen,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamilt.futuraBkBt,
                    color: Theme.of(context).colorScheme.error,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: DimensionsDouble.sixteen,
        ),
        CustomToggleButton(
          controller: formProvider.painController,
          isSelected: formProvider.selectedlistObserver,
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
            children: <TextSpan>[
              TextSpan(
                  text: '*',
                  style: TextStyle(
                    fontSize: DimensionsDouble.sixteen,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamilt.futuraBkBt,
                    color: Theme.of(context).colorScheme.error,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: DimensionsDouble.sixteen,
        ),
        CustomToggleButton(
          controller: formProvider.toldController,
          isSelected: formProvider.selectedlistObserver2,
        ),
      ],
    );
  }
}
