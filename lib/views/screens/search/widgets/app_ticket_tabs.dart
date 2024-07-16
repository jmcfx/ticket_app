import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(),
            padding: EdgeInsets.symmetric(vertical: 7.h),
            width: size.width * 0.44.w,
            child: const Center(child: Text('Airline Tickets')),
          
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7.h),
            width: size.width * 0.44.w,
            child: const Center(child: Text('Hotels')),
          ),
        ],
      ),
    );
  }
}
