import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_rental_colors.dart';

class CarSpecifications extends StatelessWidget {
  final image;
  final label;
  final value;
  const CarSpecifications({
    super.key,
    required this.image,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            color: cardBackground,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                color: secondary,
                height: 30,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textDark,
                ),
              ),
              Text(
                label,
                style: TextStyle(fontSize: 14, color: textLight),
              ),
            ],
          ),
        )
      ],
    );
  }
}
