import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';

class MyTextField extends StatelessWidget {
  int? maxletter;
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
    this.maxletter,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxletter,
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
