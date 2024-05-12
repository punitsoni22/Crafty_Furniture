import 'package:flutter/material.dart';
import 'package:furniture_app/comman/colors.dart';

class Button extends StatelessWidget {
  final String title;
  final double fontSize;
  final double height;
  final double minWidth;
  final FontWeight fontWeight;
  final EdgeInsets? margin;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.title,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w700,
    this.margin,
    required this.onPressed,
    this.minWidth = double.maxFinite,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: TColor.primaryColor1,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: height,
        minWidth: minWidth,
        child: Text(
          title,
          style: TextStyle(
            color: TColor.white,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
