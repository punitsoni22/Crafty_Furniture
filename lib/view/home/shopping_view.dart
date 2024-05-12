// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/comman/button.dart';
import 'package:furniture_app/comman/colors.dart';
import 'package:furniture_app/view/home/shopping_page.dart';

class ShoppingView extends StatefulWidget {
  const ShoppingView({super.key});

  @override
  State<ShoppingView> createState() => _ShoppingViewState();
}

class _ShoppingViewState extends State<ShoppingView> {
  List smallChair = [
    {
      "image": "assets/img/shop1.png",
      "text": "Minimalist Chair",
      "stext": "Regal Do Lobo",
      "price": "\$258.99",
    },
    {
      "image": "assets/img/shop2.png",
      "text": "HallingDal Chair",
      "stext": "Hatil-Loren",
      "price": "\$456.99",
    },
    {
      "image": "assets/img/shop3.png",
      "text": "Hero Armchair",
      "stext": "Hatil-Loren",
      "price": "\$159.99",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Shopping",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: smallChair.length,
                  itemBuilder: (context, index) {
                    var pObj = smallChair[index] as Map? ?? {};
                    return ShoppingPage(pObj: pObj);
                  },
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Container(
                width: media.width,
                height: 215,
                decoration: BoxDecoration(
                  color: TColor.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "data",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.04,
                      ),
                      Row(
                        children: [
                          Text(
                            "SubTotal",
                            style: TextStyle(
                              fontSize: 16,
                              color: TColor.gray,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$926.20",
                            style: TextStyle(
                              fontSize: 16,
                              color: TColor.orange,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            "Shipping Cost",
                            style: TextStyle(
                              fontSize: 16,
                              color: TColor.gray,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$26.20",
                            style: TextStyle(
                              fontSize: 16,
                              color: TColor.orange,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      Container(
                        width: media.width,
                        height: 1,
                        color: TColor.gray,
                      ),
                      Button(
                        title: "Check Out",
                        onPressed: () {},
                        margin: EdgeInsets.all(10),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
