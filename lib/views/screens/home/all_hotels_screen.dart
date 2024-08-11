import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/models/all_json.dart';
import 'package:ticket_app/utils/routes/app_routes.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';

class AllHotelsScreen extends StatefulWidget {
  const AllHotelsScreen({super.key});

  @override
  State<AllHotelsScreen> createState() => _AllHotelsScreenState();
}

class _AllHotelsScreenState extends State<AllHotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      appBar: AppBar(
        title: const Text('All Hotels'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8.w),
        padding: const EdgeInsets.all(8.0).r,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0.w,
            mainAxisSpacing: 16.0.h,
            childAspectRatio: 0.9.r,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            final hotel = hotelList[index];
            return HotelGridView(hotel: hotel, index: index);
          },
        ),
      ),
    );
  }
}

// Hotel Grid View .....
class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel, required this.index});
  final Map<String, dynamic> hotel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.hotelDetailRoute,
          arguments: {"index": index},
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0).r,
        margin: const EdgeInsets.only(right: 8).r,
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18).r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel['image']}'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10).r,
              child: Text(
                hotel['place'],
                style: AppStyles.headLineStyle2
                    .copyWith(color: AppStyles.kakiColor),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10).r,
                  child: Text(
                    hotel['destination'],
                    style:
                        AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10).r,
                  child: Text(
                    "\$${hotel['price']}/night",
                    style: AppStyles.headLineStyle4
                        .copyWith(color: AppStyles.kakiColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
