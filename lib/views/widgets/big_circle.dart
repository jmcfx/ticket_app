import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isRight, this.isColor});
  final bool isRight;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 10.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isColor ==null ? Colors.white : Colors.grey.shade200,
          borderRadius: isRight == true
              ? BorderRadius.only(
                  topLeft: const Radius.circular(10).r,
                  bottomLeft: const Radius.circular(10).r,
                )
              : BorderRadius.only(
                  topRight: const Radius.circular(10).r,
                  bottomRight: const Radius.circular(10).r,
                ),
        ),
      ),
    );
  }
}
