import 'package:flutter/material.dart';
import 'package:test_app/data/question_list.dart';
import 'package:test_app/screens/result_screen.dart';
import 'package:test_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcom(),
      debugShowCheckedModeBanner: false,
    );
  }
}

