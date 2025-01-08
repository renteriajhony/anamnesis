import 'package:anamnesis/custom/custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'page/anamnesis_page.dart';
import 'provider/form_provider.dart';

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
      title: 'Flutter Demo',
      theme: CustomThenData.getThemeData(),
      home: const AnamnesisPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
