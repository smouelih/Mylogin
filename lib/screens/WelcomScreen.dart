import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mylogin/colors.dart';
import 'package:mylogin/screens/LoginScreen.dart';
import 'package:mylogin/screens/SignupScreen.dart';
import 'package:mylogin/widgets/MyButton.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/pic.svg',
              height: 350,
            ),
            Text(
              'Hello !',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The best place to write life stories and share your journey experience',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            MyButton(
              mybtnclicked: () {
                Get.to(LoginScreen());
              },
              mybtntext: 'login',
              mybtncolor: Myblue,
              mybtntextcolor: Colors.white,
              mybtnbordercolor: Myblue,
              mybtnborderwidth: 0.0,
            ),
            SizedBox(height: 15),
            MyButton(
              mybtnclicked: () {
                Get.to(SignupScreen());
              },
              mybtntext: 'signup',
              mybtntextcolor: Myblue,
              mybtncolor: Colors.transparent,
              mybtnbordercolor: Myblue,
              mybtnborderwidth: 3.0,
            )
          ],
        ),
      ),
    );
  }
}
