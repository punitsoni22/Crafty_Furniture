// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../comman/colors.dart';

class ShoppingPage extends StatelessWidget {
  final Map pObj;
  const ShoppingPage({super.key, required this.pObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        width: media.width,
        height: 104,
        decoration: BoxDecoration(
          color: TColor.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: TColor.Boxbackground,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image.asset(
                  pObj["image"].toString(),
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: media.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pObj["text"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.01,
                  ),
                  Text(
                    pObj["stext"].toString(),
                    style: TextStyle(
                      color: TColor.gray,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Text(
                    pObj["price"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: TColor.orange,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
