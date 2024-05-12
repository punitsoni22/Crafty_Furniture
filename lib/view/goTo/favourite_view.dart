// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_app/comman/colors.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Favourite",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                Row(
                  children: [
                    DynamicContainer(
                      imagePath: "assets/img/favCh1.png",
                      title: "Rotation Lounge \nChair",
                      price: 9.99,
                    ),
                    DynamicContainer(
                      imagePath: "assets/img/favCh2.png",
                      title: "trapeziam Arm \nChair",
                      price: 13.99,
                    ),
                  ],
                ),
                Row(
                  children: [
                    DynamicContainer(
                      imagePath: "assets/img/favCh3.png",
                      title: "Corado D3 \nChair",
                      price: 40.99,
                    ),
                    DynamicContainer(
                      imagePath: "assets/img/favCh4.png",
                      title: "Pearl Beading \nChair",
                      price: 64.99,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DynamicContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final double price;

  const DynamicContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 155,
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: TColor.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(imagePath),
                ),
                Image.asset(
                  "assets/img/heart.png",
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(
              height: media.width * 0.04,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: media.width * 0.04,
            ),
            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 16,
                color: TColor.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
