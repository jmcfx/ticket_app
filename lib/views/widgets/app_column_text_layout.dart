import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/widgets/custom_text_style.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.crossAxisAlignment, this.isColor});
  final String topText, bottomText;
  final CrossAxisAlignment crossAxisAlignment;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        CustomTextStyle(
            text: topText,
            textStyle: AppStyles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black)),
        SizedBox(
          height: 5.h,
        ),
        CustomTextStyle(
          text: bottomText,
          textStyle: AppStyles.headLineStyle4.copyWith(color: isColor == null? Colors.white : Colors.grey.shade500),
        ),
      ],
    );
  }
}
