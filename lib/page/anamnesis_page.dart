import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../widgets/widgets.dart';

class AnamnesisPage extends StatelessWidget {
  const AnamnesisPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEnabled = true;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnamnesisStep2()),
            );
          },
        ),
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text(
          'Bienvenido a tu nuevo comienzo',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.surface,
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        text: 'Todos los campos son obligatorios ?',
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
                  ],
                ),
              ),
              Positioned(
                top: 130,
                child: AnamnesisStep1(),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                left: 0,
                child: CustomPrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnamnesisStep2()),
                    );
                  },
                  text: 'Siguiente',
                  isEnabled: isEnabled,
                ),
              ),
            ],
          )),
    );
  }
}