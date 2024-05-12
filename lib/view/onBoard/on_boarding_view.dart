// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app/comman/button.dart';
import 'package:furniture_app/view/signUp/signup_view.dart';

import '../../comman/colors.dart';
import 'on_boarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController();

  int currPage = 0;
  List pageArr = [
    {
      "subtitle":
          "View And Exprience \nFurniture With The Help \nOf Augmented Reality",
      "image": "assets/img/on_board(1).png",
    },
    {
      "subtitle":
          "Design Your Space With \nAugmented Reality By \nCreating App",
      "image": "assets/img/on_board(2).png",
    },
    {
      "subtitle":
          "Explore World Class Top \nFurnitures As Per Your \nRequirements & Choice",
      "image": "assets/img/on_board(3).png",
    },
  ];

  void onChanged(int index) {
    setState(() {
      currPage = index;
    });
  }

  void goToNextPage() {
    setState(() {
      currPage++;
    });
    controller.animateToPage(
      currPage,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              onPageChanged: onChanged,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return OnBoardingPage(pObj: pObj);
              },
            ),
            if (currPage < 2)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 25,
                ),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpView(),
                          ),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            color: TColor.gray,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: TColor.primaryColor1,
                      ),
                      child: IconButton(
                        onPressed: goToNextPage,
                        icon: Icon(
                          Icons.navigate_next_outlined,
                          color: TColor.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (currPage == 2)
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 25,
                  ),
                  child: Button(
                    title: "Get Started",
                    fontWeight: FontWeight.w500,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpView(),
                        ),
                      );
                    },
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
