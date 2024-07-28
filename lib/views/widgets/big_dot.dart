import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});

  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3).r,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2.5.w,
            color: isColor == null ? Colors.white :AppStyles.dotColor ,
          )  ,
          borderRadius: BorderRadius.circular(20).r),
    );
  }
}
