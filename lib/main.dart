import 'package:flutter/material.dart';

import 'package:mylogin/screens/WelcomScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Changa',
        primarySwatch: Colors.blue,
      ),
      home: WelcomScreen(),
    );
  }
}
