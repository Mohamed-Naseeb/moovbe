import 'package:flutter/material.dart';
import 'package:moovbe/Screens/get_started_screen.dart';
import 'package:moovbe/Screens/home_screen.dart';
import 'package:moovbe/Screens/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return const GetStartedScreen();
    
    }

  Future<void> getSavedData(BuildContext context) async {
    final sharedpreff = await SharedPreferences.getInstance();
    final username = sharedpreff.getString('username');
    final password = sharedpreff.getString('password');

    if (username != null && password != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }
}
