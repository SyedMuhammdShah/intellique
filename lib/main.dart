import 'package:flutter/material.dart';
import 'package:local_package/home_screen.dart';
import 'package:local_package/view/button_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonScreen(),
      // home: HomeScreen(),
    );
  }
}

