import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class TChipTheme {
  TChipTheme._();


  static ChipThemeData lightChipTheme =ChipThemeData(
    disabledColor: TColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white,

  );
    static ChipThemeData darkChipTheme =ChipThemeData(
    disabledColor: TColors.darkGrey,
    labelStyle: const TextStyle(color: TColors.white),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white,

  );
}