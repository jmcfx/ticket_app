import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/widgets/app_column_text_layout.dart';
import 'package:ticket_app/views/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/views/widgets/big_circle.dart';
import 'package:ticket_app/views/widgets/big_dot.dart';
import 'package:ticket_app/views/widgets/custom_text_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket , this.wholeScreen = false});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85.w,
      height: 189.h,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 :  16.w),
        child: Column(
          children: [
            //blue container
            Container(
              padding: const EdgeInsets.all(16).r,
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21.r),
                  topRight: Radius.circular(21.r),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line ...
                  Row(
                    children: [
                      CustomTextStyle(
                        text: ticket['from']['code'],
                        textStyle: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24.h,
                              child: const AppLayoutBuilderWidget(
                                  randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(),
                      const Spacer(),
                      CustomTextStyle(
                        textStyle: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                        text: ticket['to']['code'],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: CustomTextStyle(
                          text: ticket['from']['name'],
                          textStyle: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      CustomTextStyle(
                        text: ticket['flying_time'],
                        textStyle: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 100.w,
                        child: CustomTextStyle(
                          textAlign: TextAlign.end,
                          text: ticket['to']['name'],
                          textStyle: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circle and dots ...
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  const BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6.w,
                    ),
                  ),
                  const BigCircle(
                    isRight: true,
                  )
                ],
              ),
            ),
            // orange container ...
            Container(
              padding: const EdgeInsets.all(16).r,
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21.r),
                  bottomRight: Radius.circular(21.r),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: 'Departure time',
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['number'].toString(),
                        bottomText: 'Number',
                        crossAxisAlignment: CrossAxisAlignment.end,
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
