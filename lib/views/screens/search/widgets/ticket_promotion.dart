import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/search/widgets/left_side_container.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key,});
  

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //left side Container........
        LeftSideContainer(
          width: size.width * .42.w,
        ),
        //right hand side Column......
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  width: size.width * .44.w,
                  height: 210.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18).r,
                    color: const Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45.w,
                  top: -40.h,
                  child: Container(
                    padding: const EdgeInsets.all(30).r,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: AppStyles.circleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
              width: size.width * .44,
              height: 210.h,
              decoration: BoxDecoration(
                color: const Color(0xFFEC6545),
                borderRadius: BorderRadius.circular(18).r,
              ),
              child: Column(
                children: [
                  Text(
                    'Take Love',
                    style:
                        AppStyles.headLineStyle2.copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
