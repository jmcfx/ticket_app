import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/models/app_info_list.dart';
import 'package:ticket_app/views/widgets/ticket_view.dart';

class AllTicketScreen extends StatelessWidget {
  const AllTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const  Text('All tickets')

      ),
      body: ListView(
        children:   [
          SingleChildScrollView(
            child: Column(
              children:  ticketList.map((value) => Container(
                margin: EdgeInsets.only(bottom: 20.h),
                child: TicketView(ticket: value , wholeScreen: true,)) ).toList()
            ),
          )

        ],
      ),
    );
  }
}