
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialSButtons extends StatelessWidget {
  const SocialSButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(TImage.google),
              width: TSizes.iconLg,
              height: TSizes.iconLg,
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtnItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(TImage.facebook),
              width: TSizes.iconLg,
              height: TSizes.iconLg,
            ),
          ),
        ),
      ],
    );
  }
}
