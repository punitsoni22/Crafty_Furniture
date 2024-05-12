// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app/comman/button.dart';
import '../../comman/colors.dart';

class DetailView extends StatelessWidget {
  final Map chairObj;
  const DetailView({Key? key, required this.chairObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.background,
      appBar: AppBar(
        backgroundColor: TColor.background,
        actions: [
          Image.asset(
            "assets/img/heart.png",
            color: TColor.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 205,
                    height: 206,
                    child: Image.asset(
                      chairObj["image"].toString(),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20, // Adjust as needed
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chairObj["text"].toString(),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Modern Style",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      chairObj["price"].toString(),
                      style: TextStyle(
                        color: TColor.orange,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20, // Adjust as needed
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/img/person2.png"),
                              Text(
                                "341 Seen",
                                style: TextStyle(
                                  color: TColor.gray,
                                ),
                              ),
                              SizedBox(
                                width: 10, // Adjust as needed
                              ),
                              Image.asset("assets/img/heart.png"),
                              Text(
                                "290 Liked",
                                style: TextStyle(
                                  color: TColor.gray,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10, // Adjust as needed
                          ),
                          Image.asset(
                            "assets/img/star.png",
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/img/rev.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20, // Adjust as needed
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10, // Adjust as needed
                ),
                Text(
                  "The Swedish Designer Monica Forstar's Style Is Characterised By Her Enternal Love For New Materials And Beautiful Pure Shapes.",
                  style: TextStyle(
                    fontSize: 14,
                    color: TColor.gray,
                  ),
                ),
                SizedBox(
                  height: 20, // Adjust as needed
                ),
                Image.asset(
                  "assets/img/review.png",
                ),
                SizedBox(
                  height: 20, // Adjust as needed
                ),
                SizedBox(
                  height: 20, // Adjust as needed
                ),
                Button(
                  title: "Add To Cart",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
