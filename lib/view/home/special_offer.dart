import 'package:flutter/material.dart';

import '../../comman/button.dart';
import '../../comman/colors.dart';

class SpecialOffer extends StatelessWidget {
  final Map soObj;
  const SpecialOffer({super.key, required this.soObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Image.asset(
            soObj["image"].toString(),
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  soObj["Htext"].toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: TColor.white,
                  ),
                ),
                Text(
                  soObj["Stext"].toString(),
                  style: TextStyle(
                    fontSize: 13,
                    color: TColor.white,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                Button(
                  title: soObj["Btext"].toString(),
                  fontSize: 13,
                  margin: const EdgeInsets.all(10),
                  height: 5,
                  fontWeight: FontWeight.w300,
                  minWidth: Checkbox.width,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
