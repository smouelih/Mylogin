import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mylogin/colors.dart';
import 'package:mylogin/screens/HomeScreen.dart';
import 'package:mylogin/screens/VerificationScreen.dart';
import 'package:mylogin/widgets/MyButton.dart';
import 'package:mylogin/widgets/MyTextField.dart';

class ForgotpasswordScreen extends StatefulWidget {
  ForgotpasswordScreen({super.key});

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  bool mypass = true;

  var keyform = GlobalKey<FormState>();

  TextEditingController phonecontroler = TextEditingController();

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
                    'Enter your phone number and we will send you a verfication code',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  MyTextField(
                    mycontroler: phonecontroler,
                    myvalidate: (phone) {
                      if (phone.isEmpty) {
                        return 'This input sould not be empty !';
                      } else if (phone.length < 10) {
                        return 'Enter a valide phone number';
                      }
                    },
                    mykeyboardtype: TextInputType.phone,
                    showpass: false,
                    mytextfieldtext: 'Enter your phone number',
                  ),
                  MyTextField(
                    maxletter: 5,
                    mykeyboardtype: TextInputType.emailAddress,
                    myvalidate: (test){
                      if (test.isEmpty){
                        return 'text';
                      }
                    },
                    mytextfieldtext: 'test',
                    showpass: false,
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
                        Get.off(VerificationScreen(
                          phonenumber: phonecontroler.text,
                        ));
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
