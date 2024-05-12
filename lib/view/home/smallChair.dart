// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../comman/colors.dart';

class SmallChair extends StatelessWidget {
  final Map smallObj;
  const SmallChair({super.key, required this.smallObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 104,
        width: 226,
        decoration: BoxDecoration(
          color: TColor.white,
          borderRadius: BorderRadius.circular(14),
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F2),
                  borderRadius: BorderRadius.circular(14)),
              child: Image.asset(
                smallObj["image"].toString(),
              ),
            ),
            SizedBox(
              width: media.width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  smallObj["text"].toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Regal Do Lobo",
                  style: TextStyle(
                    fontSize: 13,
                    color: TColor.gray,
                  ),
                ),
                Spacer(),
                Text(
                  smallObj["price"].toString(),
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
    );
  }
}
