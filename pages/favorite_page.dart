import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_rental_colors.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/models/car_rental_model.dart';

class CarFavoriteScreen extends StatefulWidget {
  const CarFavoriteScreen({
    super.key,
  });

  @override
  State<CarFavoriteScreen> createState() => _CarFavoriteScreenState();
}

class _CarFavoriteScreenState extends State<CarFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Favorite Screen"),
        titleTextStyle: TextStyle(
          color: secondary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: GridView.builder(
            itemCount: cars.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1 / 2,
            ),
            itemBuilder: ((context, index) {
              final car = cars[index];
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            car.image,
                            fit: BoxFit.cover,
                            height: 95,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 40,
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
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: car.favorites
                                ? Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.red,
                                    size: 22,
                                  )
                                : Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.red,
                                    size: 22,
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
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
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.star_rate_rounded, color: Colors.amber),
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
                      SizedBox(height: 10),
                      Text(
                        "${car.discountPrice} PKR",
                        style: TextStyle(
                          color: success,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
