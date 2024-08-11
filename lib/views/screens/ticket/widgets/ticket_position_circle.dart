import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';

class TicketPositionCircle extends StatelessWidget {
  const TicketPositionCircle({super.key, this.pos});
  final bool? pos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos == true ? 22 : null ,
      right: pos == true ? null : 22,
      top: 210.r,
      child: Container(
        padding: EdgeInsets.all(3.r),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2.w),
        ),
        child: CircleAvatar(
          maxRadius: 4.r,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}
