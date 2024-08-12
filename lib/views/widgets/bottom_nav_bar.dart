import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controllers/bottom_nav_controller.dart';
import 'package:ticket_app/views/profile/profile_screen.dart';
import 'package:ticket_app/views/screens/home/home_screen.dart';
import 'package:ticket_app/views/screens/search/search_screen.dart';
import 'package:ticket_app/views/screens/ticket/ticket_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

//instantiate BottomNavigationController....
  final  BottomNavController controller =  Get.put(BottomNavController());

 //list is iterated using index
  final List appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Scaffold(
          body: appScreens[controller.selectedIndex.value],
          //Bottom Nav bar..
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
              onTap: controller.onTappedItem,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: const Color(0xFF526400),
            showSelectedLabels: false,
            items: const [
              //Home..
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home',
              ),
              //Search...
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search',
              ),
              //tickets....
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Tickets',
              ),
              //Profile....
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile',
              ),
            ],
          ),
        );
      }
    );
  }
}

