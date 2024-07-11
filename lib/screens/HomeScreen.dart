// ignore_for_file: file_names

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
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              email,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              password,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
