import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attribute Pricing and Description
        RoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey:TColors.grey,
          child: Column(
            children: [
              // Title Price and Stock Staus
              Row(
                children: [
                  SectionHeading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtnItems,),

                  Row(
                    children: [
                  //Actual Price
                  Text('100',style: Theme.of(context).textTheme.titleSmall!.apply(),)
                    ],
                  )



                ],
              ),
              // Variation Description

            ],
          ),
        )
      ],
    );
  }
}