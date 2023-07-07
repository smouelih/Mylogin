import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final String email;
  final String password;

  const HomeScreen({
    super.key,
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              email,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              password,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
