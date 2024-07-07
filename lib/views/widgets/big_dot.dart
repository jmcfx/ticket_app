import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3).r,
      decoration: BoxDecoration(
        border: Border.all(width: 2.5.w, color:Colors.white, ),
     borderRadius: BorderRadius.circular(20).r
      ),
    );
  }
}