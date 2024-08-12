import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/media/media.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/widgets/app_column_text_layout.dart';
import 'package:ticket_app/views/widgets/custom_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20).r,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //logo image...
                    Container(
                      width: 86.w,
                      height: 86.h,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(AppMedia.logo),
                          ),
                          borderRadius: BorderRadius.circular(10).r),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    //shows the column text...
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextStyle(
                          text: "Book Tickets",
                          textStyle: AppStyles.headLineStyle1,
                        ),
                        Text(
                          "New York",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 3.h),
                          decoration: BoxDecoration(
                            color: AppStyles.profileLocationColor,
                            borderRadius: BorderRadius.circular(100).r,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppStyles.profileTextColor,
                                ),
                                child: const Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Premium status",
                                style: TextStyle(
                                  color: AppStyles.profileTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            //divider...
            Divider(
              color: Colors.grey.shade300,
            ),
            SizedBox(
              height: 8.h,
            ),
            Stack(
              children: [
                Container(
                  height: 90.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(18).r,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25.r,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: AppStyles.primaryColor,
                          size: 27.sp,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextStyle(
                            text: "You'v got a new award ",
                            textStyle: AppStyles.headLineStyle3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          CustomTextStyle(
                            text: "You have 95 flights in a year ",
                            textStyle: AppStyles.headLineStyle3.copyWith(
                              color: Colors.white.withOpacity(0.8),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18.w,
                        color: const Color(0xFF264CD2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextStyle(
              text: "Accumulated miles",
              textStyle: AppStyles.headLineStyle2,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
              child: Column(
                children: [
                  CustomTextStyle(
                    text: "192802",
                    textStyle:
                        AppStyles.headLineStyle1.copyWith(fontSize: 35.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextStyle(
                        text: "Miles accrued",
                        textStyle: AppStyles.headLineStyle3
                            .copyWith(color: Colors.grey.shade500),
                      ),
                      CustomTextStyle(
                        text: "11 August 2024",
                        textStyle: AppStyles.headLineStyle3
                            .copyWith(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  //divider...
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "23 042",
                        bottomText: "Miles",
                        crossAxisAlignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnTextLayout(
                        topText: "Airline CO",
                        bottomText: "Received from",
                        crossAxisAlignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "24",
                        bottomText: "Miles",
                        crossAxisAlignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnTextLayout(
                        topText: "McDonal's",
                        bottomText: "Received from",
                        crossAxisAlignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "24 543",
                        bottomText: "Miles",
                        crossAxisAlignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnTextLayout(
                        topText: "Mark",
                        bottomText: "Received from",
                        crossAxisAlignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //Text.......
                  InkWell(
                    onTap: (){},
                    child: CustomTextStyle(
                      text: "How to get more miles",
                      textStyle: AppStyles.headLineStyle3.copyWith(color: AppStyles.primaryColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
