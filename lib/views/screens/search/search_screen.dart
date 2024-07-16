import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/search/widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
          children:  [
            Text("What are\nyou looking for?" , style: AppStyles.headLineStyle1.copyWith(fontSize: 35.sp ),),
            SizedBox(height: 20.h),
            const AppTicketTabs()
          ],
        ),
      ),
    );
  }
}
