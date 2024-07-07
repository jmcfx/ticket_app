import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/widgets/custom_text_style.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout(
      {super.key, required this.topText, required this.bottomText, required this.crossAxisAlignment});
  final String topText, bottomText;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        CustomTextStyle(
            text: topText,
            textStyle: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
        SizedBox(
          height: 5.h,
        ),
        CustomTextStyle(
          text: bottomText,
          textStyle: AppStyles.headLineStyle4.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
