import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/models/app_info_list.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/views/widgets/app_column_text_layout.dart';
import 'package:ticket_app/views/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
        child: ListView(
         padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          children: [
            Text(
              "Tickets",
              style: AppStyles.headLineStyle1,
            ),
            SizedBox(
              height: 20.h,
            ),
            const AppTicketTabs(
              firstTab: "Upcoming",
              secondTab: "Previous",
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 16.w),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Column(
              children: [
                Container(
                 margin: EdgeInsets.symmetric(horizontal: 15.h),
                 padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  color: AppStyles.ticketColor,
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            topText: "Flutter DB",
                            bottomText: "Passenger",
                            crossAxisAlignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                           AppColumnTextLayout(
                            topText: "5221 36896",
                            bottomText: "Passenger",
                            crossAxisAlignment: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
