import 'dart:ffi';

import 'package:coffeapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeType extends StatelessWidget {
  final String coffeType;
  final int itemIndex;
  final int isSelected;
  final ValueChanged<int> onItemTap;

  const CoffeType(
      {required this.itemIndex,
      required this.coffeType,
      required this.isSelected,
      required this.onItemTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35.0),
      child: GestureDetector(
        onTap: (() => onItemTap(itemIndex)),
        child: Text(
          coffeType,
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected == itemIndex ? Colors.orange : MyColor.greyed),
        ),
      ),
    );
  }
}
