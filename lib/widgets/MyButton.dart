import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors.dart';

class MyButton extends StatelessWidget {
  final String mybtntext;
  Color mybtntextcolor;
  Color mybtncolor;
  Color mybtnbordercolor;
  double mybtnborderwidth;
  Function() mybtnclicked;

  MyButton({
    super.key,
    required this.mybtntext,
    required this.mybtntextcolor,
    required this.mybtncolor,
    required this.mybtnbordercolor,
    required this.mybtnborderwidth,
    required this.mybtnclicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: mybtnclicked,
      child: Container(
        child: Center(
          child: Text(
            mybtntext.toUpperCase(),
            style: TextStyle(
              color: mybtntextcolor,
              fontSize: 18,
            ),
          ),
        ),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mybtncolor,
          border: Border.all(
            color: mybtnbordercolor,
            width: mybtnborderwidth,
          ),
        ),
      ),
    );
  }
}
