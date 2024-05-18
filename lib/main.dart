import 'package:flutter/material.dart';

import 'intro/intro.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      //set theme according to device
      theme: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? ThemeDataApp.ThemeDataLight()
          : ThemeDataApp.ThemeDataLight(),
    );
  }
}
