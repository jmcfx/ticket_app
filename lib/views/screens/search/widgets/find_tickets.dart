import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.symmetric( vertical: 10.h),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xD91130CE),
      ),
      child:  Center(child: Text('Find tickets', style: AppStyles.headLineStyle3,)),
    );
  }
}