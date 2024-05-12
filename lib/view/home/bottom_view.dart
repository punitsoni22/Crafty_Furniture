// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/comman/colors.dart';
import 'package:furniture_app/view/goTo/favourite_view.dart';
import 'package:furniture_app/view/home/home_view.dart';
import 'package:furniture_app/view/home/profile_view.dart';
import 'package:furniture_app/view/home/shopping_view.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  PageController controller = PageController(initialPage: 0);
  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _bottomIndex,
        items: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/home.png",
                color:
                    _bottomIndex == 0 ? TColor.primaryColor1 : TColor.lightGray,
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: _bottomIndex == 0
                      ? TColor.primaryColor1
                      : TColor.lightGray,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/heart.png",
                color:
                    _bottomIndex == 1 ? TColor.primaryColor1 : TColor.lightGray,
              ),
              Text(
                "Favourite",
                style: TextStyle(
                  color: _bottomIndex == 1
                      ? TColor.primaryColor1
                      : TColor.lightGray,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/cart.png",
                color:
                    _bottomIndex == 2 ? TColor.primaryColor1 : TColor.lightGray,
              ),
              Text(
                "Shopping",
                style: TextStyle(
                  color: _bottomIndex == 2
                      ? TColor.primaryColor1
                      : TColor.lightGray,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/profile.png",
                color:
                    _bottomIndex == 3 ? TColor.primaryColor1 : TColor.lightGray,
              ),
              Text(
                "Profile",
                style: TextStyle(
                  color: _bottomIndex == 3
                      ? TColor.primaryColor1
                      : TColor.lightGray,
                ),
              ),
            ],
          ),
        ],
        backgroundColor: TColor.white,
        onTap: (index) {
          setState(() {
            _bottomIndex = index;
          });
          controller.animateToPage(
            index,
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
          );
        },
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(
            () {
              _bottomIndex = value;
            },
          );
          controller.animateToPage(
            value,
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
          );
        },
        children: [
          HomeView(),
          FavouriteView(),
          ShoppingView(),
          ProfileView(),
        ],
      ),
    );
  }
}
