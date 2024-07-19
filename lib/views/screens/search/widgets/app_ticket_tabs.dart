import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: const Row(
        children: [
          AppTabs(
            tabText: 'All tickets',
          ),
          AppTabs(
            tabText: 'Hotels',
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, this.tabText = '', this.tabBorder = false,  this.tabColor = false});
  final String tabText;
  final bool tabBorder, tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? BorderRadius.horizontal(left: const Radius.circular(50).r)
              : BorderRadius.horizontal(right: const Radius.circular(50).r)),
      padding: EdgeInsets.symmetric(vertical: 7.h),
      width: size.width * 0.44.w,
      child: Center(child: Text(tabText)),
    );
  }
}
