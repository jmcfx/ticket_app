import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/media/media.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';

class LeftSideContainer extends StatelessWidget {
  const LeftSideContainer({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      width:  width , //size.width * .42,
      height: 435.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).r,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 1,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          //image container ....
          Container(
            height: 190.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12).r,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppMedia.planSit),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "20% discount on the early bookings of this flight Don't miss",
            style: AppStyles.headLineStyle2,
          )
        ],
      ),
    );
  }
}
