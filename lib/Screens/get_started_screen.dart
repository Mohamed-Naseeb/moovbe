import 'package:flutter/material.dart';
import 'package:moovbe/Screens/loginscreen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "moovbe",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            const SizedBox(
              height: 250,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  LoginScreen()),);
              },
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
