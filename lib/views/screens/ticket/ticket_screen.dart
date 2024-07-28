import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppStyles.backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric( horizontal: 20.w ,vertical: 20.h),
          children: [
            Text(
              "Tickets",
              style: AppStyles.headLineStyle1,
            ),
            SizedBox(height: 20.h,),
         const  AppTicketTabs(
            firstTab: "Upcoming",
            secondTab: "Previous", 
          ),
          ],
        ),
      ),
    );
  }
}
