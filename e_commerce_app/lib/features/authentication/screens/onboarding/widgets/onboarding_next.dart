import 'package:e_commerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getbottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark ?TColors.primary : Colors.black),
        child: Icon(Icons.keyboard_arrow_right_rounded ,color: dark? TColors.black:TColors.white,size: 30,),
      ),
    );
  }
}
