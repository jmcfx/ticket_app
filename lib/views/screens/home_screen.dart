import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/models/app_info_list.dart';
import 'package:ticket_app/utils/media/media.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/widgets/app_double_text.dart';
import 'package:ticket_app/views/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppStyles.backgroundColor,
      ),
      body: ListView(
        children: [
          // SizedBox(
          //   height: 40.h,
          // ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: AppStyles.headLineStyle3,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text('Book Tickets', style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10).r,
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text('Search')
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),
                SizedBox(
                  height: 20.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20).r,
                  child: Row(
                      children: ticketList
                          .map((value) => TicketView(
                                ticket: value,
                              ))
                          .toList()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
