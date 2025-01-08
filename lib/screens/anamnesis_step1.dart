import 'package:anamnesis/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/form_provider.dart';

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
          maxLines: 2,
          text: TextSpan(
            text: '¿Ha tenido operaciones? ¿Cuáles y hace cuánto \ntiempo?',
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
        SizedBox(
          width: 300,
          child: CustomEditText(controller: formProvider.operationsController),
        ),
        SizedBox(
          height: 16,
        ),
        RichText(
          maxLines: 2,
          text: TextSpan(
            text:
                '¿Tiene o tuvo alguna enfermedad diagnosticada\n o tratada por un médico?',
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
        SizedBox(
          width: 300,
          child: CustomEditText(controller: formProvider.diseaseController),
        ),
      ],
    );
  }
}
