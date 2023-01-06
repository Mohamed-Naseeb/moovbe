import 'package:flutter/material.dart';
import 'package:moovbe/Screens/home_screen.dart';
import 'package:moovbe/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _usernameTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const ListTile(
              title: Text(
                "Welcom",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              subtitle: Text(
                "Manage you Bus and drivers",
                style: TextStyle(color: Colors.white),
              ),
            )),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              controller: _usernameTextEditingController,
              decoration: const InputDecoration(
                  hintText: "username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _passwordTextEditingController,
              decoration: const InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                checkLogin(context);
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.red),
              ),
            )
          ]),
        )),
      ),
    );
  }

  Future<void> saveLoginData() async {
    final sharedpref = await SharedPreferences.getInstance();

    sharedpref.setString('username', _usernameTextEditingController.text);
    sharedpref.setString('password', _passwordTextEditingController.text);
  }

  Future<void> checkLogin(BuildContext context) async {
    final _username = _usernameTextEditingController.text;
    final _password = _passwordTextEditingController.text;

    if (USERNAME == _username && PASSWORD == _password) {
      saveLoginData();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }
}
