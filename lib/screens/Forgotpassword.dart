import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylogin/colors.dart';
import 'package:mylogin/main.dart';
import 'package:mylogin/screens/HomeScreen.dart';
import 'package:mylogin/screens/SignupScreen.dart';
import 'package:mylogin/widgets/MyButton.dart';
import 'package:mylogin/widgets/MyTextField.dart';

class ForgotpasswordScreen extends StatefulWidget {
  ForgotpasswordScreen({super.key});

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordscreeSState();
}

class _ForgotpasswordscreeSState extends State<ForgotpasswordScreen> {
  bool mypass = true;
  var keyform = GlobalKey<FormState>();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: SvgPicture.asset(
              'images/arrow_back.svg',
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: keyform,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Forgor password!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Enter your email or phone numner and we will send you a verfication code',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  MyTextField(
                    mycontroler: emailcontroler,
                    myvalidate: (email) {
                      if (email.isEmpty) {
                        return 'This input sould not be empty !';
                      } else if (!EmailValidator.validate(email)) {
                        return 'Enter a valid email or number';
                      } else {
                        return null;
                      }
                    },
                    mykeyboardtype: TextInputType.emailAddress,
                    showpass: false,
                    mytextfieldtext: 'Enter your email Or number',
                  ),
                  SizedBox(height: 40),
                  MyButton(
                    mybtntext: 'send ->',
                    mybtntextcolor: Colors.white,
                    mybtncolor: Myblue,
                    mybtnbordercolor: Colors.transparent,
                    mybtnborderwidth: 0.0,
                    mybtnclicked: () {
                      final isvalidate = keyform.currentState!.validate();

                      if (isvalidate) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                    name: '',
                                    email: emailcontroler.text,
                                    password: passwordcontroler.text)),
                            (route) => false);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
