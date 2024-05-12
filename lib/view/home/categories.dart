import 'package:flutter/material.dart';

import '../../comman/colors.dart';

class Categories extends StatefulWidget {
  final Map catObj;
  final bool isSelected;
  final Function(bool) onCategorySelected;

  const Categories({
    super.key,
    required this.catObj,
    required this.isSelected,
    required this.onCategorySelected,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool clickVal = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onCategorySelected(!widget.isSelected);
      },
      child: Container(
        // margin: EdgeInsets.all(5),
        width: 105,
        height: 32,
        decoration: BoxDecoration(
          color: widget.isSelected ? TColor.primaryColor1 : TColor.background,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              height: 20,
              width: 20,
              widget.catObj["image"].toString(),
              color: widget.isSelected ? TColor.white : TColor.catText,
            ),
            TextButton(
              onPressed: () {
                widget.onCategorySelected(!widget.isSelected);
              },
              child: Text(
                widget.catObj["text"].toString(),
                style: TextStyle(
                  fontSize: 13,
                  color: widget.isSelected ? TColor.white : TColor.catText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
