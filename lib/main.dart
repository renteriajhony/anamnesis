import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'anamnesis.dart';
/// [main] function is the entry point of the application.
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FormProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Anamnesis App',
      theme: CustomThenData.getThemeData(),
      home: const AnamnesisPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        AnamnesisPage.routeName: (context) => const AnamnesisPage(),
        AnamnesisResultPage.routeName: (context) => const AnamnesisResultPage(),
      },
      initialRoute: AnamnesisPage.routeName,
    );
  }
}
