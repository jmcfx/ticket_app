import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color backgroundColor = const Color(0xFFeeedf2);

  static  TextStyle textStyle =  TextStyle(
    fontSize: 16.sp,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
    color: textColor,
  );


  static TextStyle headLineStyle2 =  TextStyle(
    fontSize: 21.sp,
    fontWeight: FontWeight.bold,
    color: textColor
  );


   static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
  );

} 
