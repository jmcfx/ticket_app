import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_app/utils/routes/app_routes.dart';
import 'package:ticket_app/utils/styles/app_styles.dart';
import 'package:ticket_app/views/screens/ticket/all_ticket_screen.dart';
import 'package:ticket_app/views/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ticket App',
          theme: ThemeData(
            appBarTheme: AppBarTheme( backgroundColor:  AppStyles.backgroundColor),
           // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          //named Route....
          routes: {
           AppRoutes.homeScreenRoute  : (context) => const BottomNavBar(),
           AppRoutes.allTicketRoute : (context) => const AllTicketScreen(),
          },
          
        );
      },
    );
  }
}
