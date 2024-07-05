import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle(
      {super.key, required this.text, required this.textStyle, this.textAlign});
  final String text;
  final TextStyle textStyle;
  final TextAlign ? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: textStyle,
    );
  }
}