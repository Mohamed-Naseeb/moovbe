import 'package:flutter/material.dart';
import 'package:moovbe/Screens/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.redAccent),
      home: HomeScreen(),
    );
  }
}