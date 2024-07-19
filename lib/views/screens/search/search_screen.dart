import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/routes/app_routes.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/views/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/views/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/views/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
          children: [
            Text(
              "What are\nyou looking for?",
              style: AppStyles.headLineStyle1.copyWith(fontSize: 35.sp),
            ),
            SizedBox(height: 20.h),
            const AppTicketTabs(),
            SizedBox(height: 25.h),
            const AppTextIcon(
              icons: Icons.flight_takeoff_rounded,
              text: 'Departure',
            ),
            SizedBox(height: 20.h),
            const AppTextIcon(
              icons: Icons.flight_land_rounded,
              text: 'Arrival',
            ),
             SizedBox(height: 25.h),
            const FindTickets(),
            SizedBox(
              height: 40.h,
            ),
            AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: () => Navigator.pushNamed(
                context,
                AppRoutes.allTicketRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
