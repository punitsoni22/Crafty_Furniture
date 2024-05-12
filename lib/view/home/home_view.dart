// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_app/comman/colors.dart';
import 'package:furniture_app/comman/text_field.dart';
import 'package:furniture_app/view/home/categories.dart';
import 'package:furniture_app/view/home/chairSelect.dart';
import 'package:furniture_app/view/home/smallChair.dart';
import 'package:furniture_app/view/home/special_offer.dart';

import '../goTo/detail.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List offerPage = [
    {
      "image": "assets/img/s_o_1.png",
      "Htext": "20% Discound",
      "Stext": "For a cozy yellow set!",
      "Btext": "Learn More",
    },
    {
      "image": "assets/img/s_o_2.png",
      "Htext": "30% Discound",
      "Stext": "For a cozy yellow set!",
      "Btext": "Shop Now",
    },
  ];
  int _selectedIndex = 0;
  List catogoriesPage = [
    {
      "image": "assets/img/armChair.png",
      "text": "Armchair",
    },
    {
      "image": "assets/img/sofa.png",
      "text": "Sofa",
    },
    {
      "image": "assets/img/bed.png",
      "text": "Bed",
    },
    {
      "image": "assets/img/light.png",
      "text": "Light",
    },
  ];
  List chairList = [
    {
      "image": "assets/img/chair1.png",
      "text": "Ox Mathis Chair",
      "price": "\$9.99",
    },
    {
      "image": "assets/img/chair2.png",
      "text": "Fuji Arm Chair",
      "price": "\$19.99",
    },
  ];
  List smallChair = [
    {
      "image": "assets/img/ch1.png",
      "text": "Swoon Lounge",
      "price": "\$133.99",
    },
    {
      "image": "assets/img/ch2.png",
      "text": "Touco Armchair",
      "price": "\$146.99",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/img/logo.png",
                      fit: BoxFit.fill,
                      width: 48,
                    ),
                    SizedBox(
                      width: media.width * 0.05,
                    ),
                    Column(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: TColor.gray,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "Zuzkso",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/img/notify.png",
                      fit: BoxFit.fill,
                      width: 24,
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                TextFieldE(
                  hinttext: "Search Furniture",
                  icon: Icon(Icons.search),
                  fontsize: 16,
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  "Special Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: 136,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: offerPage.length,
                    itemBuilder: (context, index) {
                      var soObj = offerPage[index] as Map? ?? {};
                      return SpecialOffer(
                        soObj: soObj,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: media.height * 0.05,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catogoriesPage.length,
                    itemBuilder: (context, index) {
                      var catObj = catogoriesPage[index] as Map? ?? {};
                      return Categories(
                        catObj: catObj,
                        isSelected: index == _selectedIndex,
                        onCategorySelected: (isSelected) {
                          setState(
                            () {
                              if (isSelected) {
                                _selectedIndex = index;
                              } else {
                                _selectedIndex = -1; // No category selected
                              }
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      "Most interested",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: TColor.orange,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: media.height * 0.32,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      var charObj = chairList[index] as Map? ?? {};
                      return ChairSelect(
                          chairObj: charObj,
                          onpressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailView(
                                  chairObj: charObj,
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: TColor.orange,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  // width: 250,
                  height: 104,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      var smallObj = smallChair[index] as Map? ?? {};
                      return SmallChair(
                        smallObj: smallObj,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
