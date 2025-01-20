import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_navigation_bar.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_rental_colors.dart';

class CarRentalWelcomeScreen extends StatelessWidget {
  const CarRentalWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/car-rental/welcome.jpg"),
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find and Rent a Car for Your Best Moments",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: cardBackground,
                      letterSpacing: 6.5,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Making your drive best is our responsibility",
                    style: TextStyle(
                      fontSize: 26,
                      height: 1.8,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarBottomNavigationBar(),
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Let's Get Started!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: cardBackground,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
