import 'package:d/screens/home.dart';
import 'package:flutter/material.dart';

TextStyle myStyle = const TextStyle(fontSize: 16);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintText: "Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
    );
    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
    );
    final loginButton = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.purple[900],
      child: MaterialButton(
        onPressed: () {
          if (username == "aayush" && password == "pass1234") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print("login failed");
          }
        },

        // minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(18),
        child: const Text(
          'Sign in',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 243, 235, 243),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person_rounded,
                    size: 180, color: Colors.purple[900]),
                const SizedBox(
                  height: 20,
                ),
                usernameField,
                const SizedBox(height: 10),
                passwordField,
                const SizedBox(height: 20),
                loginButton,
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
