import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(JokesApp());
}

class JokesApp extends StatelessWidget {
  const JokesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
