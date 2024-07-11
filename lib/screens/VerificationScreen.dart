// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mylogin/colors.dart';
import 'package:mylogin/widgets/MyButton.dart';
import 'package:mylogin/widgets/MyTextField.dart';

class VerificationScreen extends StatelessWidget {
  String phonenumber;

  VerificationScreen({
    super.key,
    required this.phonenumber,
  });

  bool mypass = true;
  bool myad = false;

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
                    'Verificaion!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Enter OTP verification code',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'We just send a code to $phonenumber',
                    style: const TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  MyTextField(
                    maxletter: 6,
                    mycontroler: phonecontroler,
                    myvalidate: (phone) {
                      if (phone.isEmpty) {
                        return 'This input sould not be empty !';
                      }
                    },
                    mykeyboardtype: TextInputType.phone,
                    showpass: false,
                    mytextfieldtext: 'Enter your verification code',
                  ),
                  const SizedBox(height: 40),
                  MyButton(
                    mybtntext: 'verify',
                    mybtntextcolor: Colors.white,
                    mybtncolor: Myblue,
                    mybtnbordercolor: Colors.transparent,
                    mybtnborderwidth: 0.0,
                    mybtnclicked: () {
                      final isvalidate = keyform.currentState!.validate();

                      if (isvalidate) {}
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
