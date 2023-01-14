import 'package:building_design_systems/screens/home_screen.dart';
import 'package:building_design_systems/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),      
      title: 'Building Design Systems',
      home: const HomeScreen(),
    );
  }
}
