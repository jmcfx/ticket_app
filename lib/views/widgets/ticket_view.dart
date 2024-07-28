import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/widgets/app_column_text_layout.dart';
import 'package:ticket_app/views/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/views/widgets/big_circle.dart';
import 'package:ticket_app/views/widgets/big_dot.dart';
import 'package:ticket_app/views/widgets/custom_text_style.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85.w,
      height: 180.h,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16.w),
        child: Column(
          children: [
            //blue container
            Container(
              padding: const EdgeInsets.all(16).r,
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketBlue
                    : AppStyles.ticketColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21.r),
                  topRight: Radius.circular(21.r),
                ),
              ),
              child: Column(
                children: [
                  //ticketView first row....
                  Row(
                    children: [
                      CustomTextStyle(
                        text: ticket['from']['code'],
                        textAlign: TextAlign.start,
                        textStyle: isColor == null
                            ? AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : AppStyles.headLineStyle3,
                      ),
                      const Spacer(),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24.h,
                              child:  const AppLayoutBuilderWidget(
                                  randomDivider: 6,
                                  ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planeSecondColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      BigDot(
                        isColor: isColor,
                      ),
                      const Spacer(),
                      CustomTextStyle(
                        textAlign: TextAlign.end,
                        textStyle: isColor == null
                            ? AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : AppStyles.headLineStyle3,
                        text: ticket['to']['code'],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //ticket secondView row.....
                  Row(
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: CustomTextStyle(
                          textAlign: TextAlign.start,
                          text: ticket['from']['name'],
                          textStyle: isColor ==null ? AppStyles.headLineStyle4
                              .copyWith(color: Colors.white) : AppStyles.headLineStyle4 ,
                        ),
                      ),
                      const Spacer(),
                      CustomTextStyle(
                        textAlign: TextAlign.center,
                        text: ticket['flying_time'],
                        textStyle: isColor ==null ? AppStyles.headLineStyle4
                            .copyWith(color: Colors.white) : AppStyles.headLineStyle4,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100.w,
                        child: CustomTextStyle(
                          textAlign: TextAlign.end,
                          text: ticket['to']['name'],
                          textStyle: isColor ==null ? AppStyles.headLineStyle4
                              .copyWith(color: Colors.white) : AppStyles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circle and dots ...
            Container(
              color: isColor== null ? AppStyles.ticketOrange :AppStyles.ticketColor ,
              child: Row(
                children: [
                   BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6.w,
                      isColor: isColor,
                    ),
                  ),
                   BigCircle(
                    isRight: true,
                    isColor: isColor,
                  )
                ],
              ),
            ),
            // orange container ...
            Container(
              padding: const EdgeInsets.all(16).r,
              decoration: BoxDecoration(
                color: isColor ==null ? AppStyles.ticketOrange : AppStyles.ticketColor ,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular( isColor == null ? 21.r : 0),
                  bottomRight: Radius.circular( isColor == null? 21.r : 0),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line ...
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket['date'],
                        bottomText: 'DATE',
                        isColor: isColor,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: 'Departure time',
                        crossAxisAlignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['number'].toString(),
                        bottomText: 'Number',
                        crossAxisAlignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
