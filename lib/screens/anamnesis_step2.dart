import 'package:anamnesis/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AnamnesisStep2 extends StatelessWidget {
  const AnamnesisStep2({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: 'jajajajja',
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
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: CustomEditText(controller: controller1),
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            maxLines: 2,
            text: TextSpan(
              text: 'Mero',
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
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: CustomEditText(controller: controller2),
          ),
        ],
      ),
    );
  }
}
