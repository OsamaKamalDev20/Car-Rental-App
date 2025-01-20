import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_rental_colors.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/pages/booking_page.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/pages/favorite_page.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/pages/home_page.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/pages/setting_page.dart';

class CarBottomNavigationBar extends StatefulWidget {
  const CarBottomNavigationBar({super.key});

  @override
  State<CarBottomNavigationBar> createState() => _CarBottomNavigationBarState();
}

class _CarBottomNavigationBarState extends State<CarBottomNavigationBar> {
  int currentIndex = 0;
  final screens = [
    CarHomeScreen(),
    CarBookingScreen(),
    CarFavoriteScreen(),
    CarSettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: screens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: cardBackground,
        unselectedLabelStyle: TextStyle(
          color: textLight,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
        ),
        selectedLabelStyle: TextStyle(
          color: secondary,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: secondary,
        unselectedItemColor: textLight,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.car_detailed),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
