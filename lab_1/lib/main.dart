import 'package:flutter/material.dart';
import 'package:lab_1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab_1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFc0c0c0)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
