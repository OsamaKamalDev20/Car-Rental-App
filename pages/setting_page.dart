import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/Car%20Rental%20App/car_rental_colors.dart';

class CarSettingScreen extends StatefulWidget {
  const CarSettingScreen({super.key});

  @override
  State<CarSettingScreen> createState() => _CarSettingScreenState();
}

class _CarSettingScreenState extends State<CarSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: primary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: cardBackground,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.search, color: textLight),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: secondary,
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: textLight,
                              fontWeight: FontWeight.normal,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 34,
                  ),
                ),
                title: Text(
                  "OsamaKamal20286",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "osamakamal650@ggmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 14,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 1,
                  color: textLight.withOpacity(.3),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.signal_cellular_alt_rounded,
                        color: Colors.red,
                        size: 34,
                      ),
                      title: Text(
                        "SIM Card & Mobile Data",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.wifi_rounded,
                        color: Colors.blue,
                        size: 34,
                      ),
                      title: Text(
                        "Wi-Fi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        "Telscape (A 365)",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.bluetooth_rounded,
                        color: Colors.green,
                        size: 34,
                      ),
                      title: Text(
                        "Bluetooth",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        "Off",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.brightness_4_rounded,
                        color: Colors.yellow,
                        size: 34,
                      ),
                      title: Text(
                        "Display & Brightness",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.notifications_rounded,
                        color: Colors.deepOrange,
                        size: 34,
                      ),
                      title: Text(
                        "Notification & Status Bar",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.purple,
                        size: 34,
                      ),
                      title: Text(
                        "Password & biometrics",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 14,
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
}
