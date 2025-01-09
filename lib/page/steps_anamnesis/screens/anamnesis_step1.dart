import 'package:anamnesis/tokens/domensions.dart';
import 'package:anamnesis/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/form_provider.dart';

/// [AnamnesisStep1] class is used to create the first step of the anamnesis form.
/// This step is used to ask the user if they have had any operations or diseases.
class AnamnesisStep1 extends StatelessWidget {
  const AnamnesisStep1({super.key});
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
            text: '¿Ha tenido operaciones? ¿Cuáles y hace cuánto tiempo?',
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
        CustomEditText(
          controller: formProvider.operationsController,
          key: formProvider.operationsFormKey,
        ),
        SizedBox(
          height: DimensionsDouble.sixteen,
        ),
        RichText(
          maxLines: 2,
          text: TextSpan(
            text:
                '¿Tiene o tuvo alguna enfermedad diagnosticada o tratada por un médico?',
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
        CustomEditText(
          controller: formProvider.diseaseController,
          key: formProvider.diseaseFormKey,
        ),
      ],
    );
  }
}
