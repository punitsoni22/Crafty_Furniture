import 'package:flutter/material.dart';
import 'package:furniture_app/comman/colors.dart';

class TextFieldE extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int fontsize;
  final bool obscureText;
  final String hinttext;
  final Widget? icon;
  final Widget? suffixIcon;
  final EdgeInsets? padding;

  const TextFieldE({
    super.key,
    this.controller,
    required this.hinttext,
    this.keyboardType,
    this.obscureText = false,
    this.fontsize = 14,
    this.suffixIcon,
    this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffix: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          prefixIcon: icon,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hinttext,
          hintStyle: TextStyle(
            color: TColor.lightGray,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
