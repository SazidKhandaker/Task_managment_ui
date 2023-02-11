import 'package:flutter/material.dart';
import 'package:taskmanagment_ui/homepage.dart';
import 'package:taskmanagment_ui/splase/splase.dart';
import 'package:taskmanagment_ui/steeper/steeperone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff191A22),
      ),
      home: SplaseScreen(),
    );
  }
}
