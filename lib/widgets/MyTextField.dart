import 'package:flutter/material.dart';

import '../colors.dart';

class MyTextField extends StatelessWidget {
  final String mytextfieldtext;
  final IconData? mysufixicon;
  Function()? mysufixclick;
  bool showpass = true;
  TextInputType? mykeyboardtype;
  var myvalidate;
  TextEditingController? mycontroler = TextEditingController();

  MyTextField({
    super.key,
    required this.mytextfieldtext,
    this.mysufixicon,
    this.mysufixclick,
    required this.showpass,
    this.mykeyboardtype,
    this.myvalidate,
    this.mycontroler,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroler,
      validator: myvalidate,
      obscureText: showpass,
      keyboardType: mykeyboardtype,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: mysufixclick,
          child: Icon(mysufixicon),
        ),
        hintText: mytextfieldtext,
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
