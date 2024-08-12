import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/models/all_json.dart';
import 'package:ticket_app/models/app_info_list.dart';
import 'package:ticket_app/utils/media/media.dart';
import 'package:ticket_app/utils/routes/app_routes.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/home/widgets/hotel.dart';
import 'package:ticket_app/views/widgets/app_double_text.dart';
import 'package:ticket_app/views/widgets/custom_text_style.dart';
import 'package:ticket_app/views/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(),
      body: ListView(
        children: [
          // SizedBox(
          //   height: 40.h,
          // ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                         CustomTextStyle(
                          text: "Book Tickets",
                          textStyle: AppStyles.headLineStyle1,
                        ),
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
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
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
                //UpComing Flights.....
                AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                    func: () =>
                        Navigator.pushNamed(context, AppRoutes.allTicketRoute)),
                SizedBox(
                  height: 20.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map((value) => GestureDetector(
                              onTap: () {
                                var index = ticketList.indexOf(value);
                                Navigator.pushNamed(
                                    context, AppRoutes.ticketScreenRoute,
                                    arguments: {"index": index});
                              },
                              child: TicketView(
                                ticket: value,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                //hotel.....
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotelScreenRoute);
                  },
                ),
                SizedBox(height: 20.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(3)
                        .map(
                          (value) => GestureDetector(
                            onTap: () {
                              var index = hotelList.indexOf(value);
                              Navigator.pushNamed(
                                  context, AppRoutes.hotelDetailRoute,
                                  arguments: {"index": index});
                            },
                            child: Hotels(hotel: value),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
