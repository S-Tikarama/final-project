

import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class ShadowsStyle {


  static final verticalProductShadow =BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  
  static final horizontalProductShadow =BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}