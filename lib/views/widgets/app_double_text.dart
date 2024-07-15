import 'package:flutter/material.dart';
import 'package:ticket_app/utils/routes/app_routes.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';


class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText});
  final String bigText, smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.allTicketRoute);
          },
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
