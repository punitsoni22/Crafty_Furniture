// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../comman/colors.dart';

class ChairSelect extends StatelessWidget {
  final Map chairObj;
  final VoidCallback onpressed;
  const ChairSelect({
    super.key,
    required this.chairObj,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
          padding: EdgeInsets.all(20),
          width: 211,
          height: media.height * 0.80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: TColor.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  chairObj["image"].toString(),
                ),
              ),
              SizedBox(
                height: media.width * 0.03,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chairObj["text"].toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hans j. wegner",
                        style: TextStyle(
                          color: TColor.gray,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: TColor.primaryColor1,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      "assets/img/shoping_icon.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              Text(
                chairObj["price"].toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: TColor.orange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
