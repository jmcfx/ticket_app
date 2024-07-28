import 'package:flutter/material.dart';


class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle(
      {super.key, required this.text, required this.textStyle, this.textAlign, this.isColor});
  final String text;
  final TextStyle textStyle;
  final TextAlign? textAlign;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: textStyle ,
    );
  }
}
