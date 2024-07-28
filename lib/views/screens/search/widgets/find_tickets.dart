import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});
  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.findTickets,
      ),
      child: Center(
        child: Text(
          'Find Tickets',
          style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}