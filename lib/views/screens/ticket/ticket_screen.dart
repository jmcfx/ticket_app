import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/models/app_info_list.dart';
import 'package:ticket_app/utils/media/media.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/views/screens/ticket/widgets/ticket_position_circle.dart';
import 'package:ticket_app/views/widgets/app_column_text_layout.dart';
import 'package:ticket_app/views/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/views/widgets/ticket_view.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}
late int ticketIndex = 0;
class _TicketScreenState extends State<TicketScreen> {
  @override
  //grabs data from another screen...
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments != null){
    var args = ModalRoute.of(context)!.settings.arguments as Map ;
    ticketIndex = args['index'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tickets'),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
              children: [
                // Text(
                //   "Tickets",
                //   style: AppStyles.headLineStyle1,
                // ),
                // SizedBox(
                //   height: 20.h,
                // ),
                const AppTicketTabs(
                  firstTab: "Upcoming",
                  secondTab: "Previous",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16.w),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                    isColor: true,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 20.h),
                      color: AppStyles.ticketColor,
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnTextLayout(
                                topText: "Flutter DB",
                                bottomText: "Passenger",
                                crossAxisAlignment: CrossAxisAlignment.start,
                                isColor: true,
                              ),
                              AppColumnTextLayout(
                                topText: "5221 36896",
                                bottomText: "passport",
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColor: true,
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          const AppLayoutBuilderWidget(
                            randomDivider: 16,
                            width: 5,
                            isColor: true,
                          ),
                          SizedBox(height: 20.h),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnTextLayout(
                                topText: "24658 28274478",
                                bottomText: "Number of E-ticket",
                                crossAxisAlignment: CrossAxisAlignment.start,
                                isColor: true,
                              ),
                              AppColumnTextLayout(
                                topText: "B2SG28",
                                bottomText: "Booking code",
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColor: true,
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          const AppLayoutBuilderWidget(
                            randomDivider: 16,
                            width: 5,
                            isColor: true,
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppMedia.visaCard,
                                        scale: 11.r,
                                      ),
                                      Text(
                                        " *** 2462",
                                        style: AppStyles.headLineStyle3,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    'Payment Method',
                                    style: AppStyles.headLineStyle4,
                                  )
                                ],
                              ),
                              const AppColumnTextLayout(
                                topText: "\$249.99",
                                bottomText: "Price",
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColor: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 1,
                ),
                //bottom of the ticket detail section.....
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21.r),
                      bottomLeft: Radius.circular(21.r),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      //barcodeWidget....
                      child: BarcodeWidget(
                        height: 70.h,
                        width: double.infinity,
                        data: 'https://www.mercurialtech.co',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: AppStyles.textColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //colored ticket....
                Container(
                  padding: EdgeInsets.only(left: 16.w),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                  ),
                )
              ],
            ),
            const TicketPositionCircle(
              pos: true,
            ),
            const TicketPositionCircle(
              pos: false,
            ),
          ],
        ),
      ),
    );
  }
}
