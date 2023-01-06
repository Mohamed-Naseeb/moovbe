
import 'package:flutter/material.dart';
import 'package:moovbe/myapp.dart';

const USERNAME = "noviindus";
const PASSWORD = "1234";

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(MaterialApp(
    theme: ThemeData(backgroundColor: Colors.redAccent),
    home: const MyApp(),
  ));
}
