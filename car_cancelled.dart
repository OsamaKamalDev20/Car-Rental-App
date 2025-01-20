import 'package:flutter/material.dart';

import 'car_rental_colors.dart';

class CarCancelledScreen extends StatelessWidget {
  const CarCancelledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Car Cancelled",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primary,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          "Toyota Corolla Altis 1.6 X",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textDark,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          "7,159,000 PKR",
                          style: TextStyle(
                            color: buttonColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Image.asset(
                          "assets/car-rental/toyotaCorollaAltis.png",
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Divider(thickness: 1, height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month_rounded,
                                        color: secondary),
                                    SizedBox(width: 5),
                                    Text(
                                      "29/06/2024",
                                      style: TextStyle(color: textLight),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_rounded,
                                        color: secondary),
                                    SizedBox(width: 5),
                                    Text(
                                      "04:15 pm",
                                      style: TextStyle(color: textLight),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: error, shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Cancelled",
                                      style: TextStyle(color: textLight),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 150,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF4F6FA),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Scheduled",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: primary,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // SizedBox(width: 1),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 150,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: buttonColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Cancelled",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: cardBackground,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          "KIA Sportage AWD 2.0L",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textDark,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          "8,320,000 PKR",
                          style: TextStyle(
                            color: buttonColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Image.asset(
                          "assets/car-rental/kiaSportage.png",
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Divider(thickness: 1, height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month_rounded,
                                        color: secondary),
                                    SizedBox(width: 5),
                                    Text(
                                      "11/04/2024",
                                      style: TextStyle(color: textLight),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_rounded,
                                        color: secondary),
                                    SizedBox(width: 5),
                                    Text(
                                      "07:33 am",
                                      style: TextStyle(color: textLight),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: error, shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Cancelled",
                                      style: TextStyle(color: textLight),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 150,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFF4F6FA),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Scheduled",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: primary,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 150,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: buttonColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Cancelled",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: cardBackground,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
