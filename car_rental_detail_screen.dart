import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_rental_colors.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/custom_car_specification.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/models/car_rental_model.dart';

class CarRentalDetailScreen extends StatelessWidget {
  final Car car;
  CarRentalDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: car.image,
                    child: Image.asset(
                      car.image,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.33,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: cardBackground,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: secondary,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: cardBackground,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: car.favorites
                              ? Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Colors.red,
                                )
                              : Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.red,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              car.brand,
                              style: TextStyle(
                                color: textLight,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              car.name,
                              style: TextStyle(
                                color: textDark,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "${car.rating.toString()}",
                              style: TextStyle(
                                color: textDark,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Experience luxury and best performance with ${car.name}. ${car.brand} is providing massive discount on ${car.name} with factory price of ${car.price} PKR to almost around ${car.discountPrice} PKR. So don't missed a chance and book your dream car.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.8,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Specification",
                      style: TextStyle(
                        color: textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CarSpecifications(
                            image: "assets/car-rental/carEngineIcon.png",
                            label: "Engine",
                            value: "${car.engine} CC",
                          ),
                          CarSpecifications(
                            image: "assets/car-rental/carSpeedIcon.png",
                            label: "Top Speed",
                            value: "${car.speed} km/h",
                          ),
                          CarSpecifications(
                            image: "assets/car-rental/carFuelTankIcon.png",
                            label: "Fuel Tank",
                            value: "${car.fuel} L",
                          ),
                          CarSpecifications(
                            image: "assets/car-rental/carHorsePowerIcon.png",
                            label: "Horse Power",
                            value: "${car.horsePower} HP",
                          ),
                          CarSpecifications(
                            image: "assets/car-rental/carTorqueIcon.png",
                            label: "Torque",
                            value: "${car.torque} Nm",
                          ),
                          CarSpecifications(
                            image: "assets/car-rental/carBootSpaceIcon.png",
                            label: "BootSpace",
                            value: "${car.bootSpace} KG",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Features",
                      style: TextStyle(
                        color: textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        _buildFeatureChip("Android Auto"),
                        _buildFeatureChip("Apple Car Play"),
                        _buildFeatureChip("2 to 4 Parking Sensors"),
                        _buildFeatureChip("2 to 4 Airbags"),
                        _buildFeatureChip("Bluetooth"),
                        _buildFeatureChip("Navigation"),
                        _buildFeatureChip("Alloys Rim"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: textLight,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "${car.discountPrice} only",
                            style: TextStyle(
                              color: success,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: cardBackground,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: secondary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: secondary.withOpacity(.3), width: 1),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: secondary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
