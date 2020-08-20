import 'package:flutter/material.dart';
import 'package:genderpredictor/questions.dart';
import 'package:genderpredictor/result.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/questions': (context) => Questions(),
        '/result': (context) => Result(),
      },
    );
  }
}
