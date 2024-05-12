// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:furniture_app/comman/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List _profileList = [
    {
      "icon": "assets/img/profile.png",
      "text": "Profile",
    },
    {
      "icon": "assets/img/payment.png",
      "text": "Payment Methods",
    },
    {
      "icon": "assets/img/order.png",
      "text": "Order History",
    },
    {
      "icon": "assets/img/delivery.png",
      "text": "Delivery Address",
    },
    {
      "icon": "assets/img/support.png",
      "text": "Support Center",
    },
    {
      "icon": "assets/img/legal.png",
      "text": "Legal Policy",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: media.height * 0.05,
              ),
              SizedBox(
                width: 60,
                height: 60,
                child: Image.asset(
                  "assets/img/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: media.height * 0.005,
              ),
              Text(
                "Zuzukso",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: media.height * 0.0005,
              ),
              Text(
                "Zuzukso1424@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  color: TColor.gray,
                ),
              ),
              SizedBox(
                height: media.height * 0.05,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _profileList.length,
                  itemBuilder: (context, index) {
                    var pObj = _profileList[index] as Map? ?? {};
                    return ProfileList(
                      pObj: pObj,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileList extends StatelessWidget {
  final Map pObj;
  const ProfileList({super.key, required this.pObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: media.width,
      height: 60,
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Image.asset(
            pObj["icon"].toString(),
          ),
          SizedBox(
            width: media.width * 0.05,
          ),
          Text(
            pObj["text"].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
