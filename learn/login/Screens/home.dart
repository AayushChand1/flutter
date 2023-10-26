import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen(this.username, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [Icon(Icons.home), SizedBox(width: 15), Text('Home')],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Welcome $username',
              style: const TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
