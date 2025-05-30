import 'package:e_commerce_app/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attribute Pricing and Description
        RoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              // Title Price and Stock Staus
              Row(
                children: [
                  SectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtnItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Price :",
                            smallSize: true,
                          ),

                          //Actual Price
                          Text(
                            '100',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtnItems),

                          //Sale Price
                          const ProductPriceText(price: "80"),
                        ],
                      ),
                      //Stack
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const ProductTitleText(
                title:
                    "This is the Discription of the product and it can go up to max 4 lines",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtnItems),

        // --- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SectionHeading(title: "Colors", showActionButton: false),
            SizedBox(height: TSizes.spaceBtnItems / 2),
            Wrap(
              
              spacing: 8,
              children: [
                TChoiceChip(
                  selected: true,
                  text: "White",
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  selected: false,
                  text: "Green",
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  selected: false,
                  text: "Red",
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: "Size", showActionButton: false),
            SizedBox(height: TSizes.spaceBtnItems / 2),
            Wrap(
              spacing: 8,
              children: [
                 TChoiceChip(
                  selected: true,
                  text: "EU 34",
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  selected: false,
                  text: "EU 35",
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  selected: false,
                  text: "EU 36",
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  selected: false,
                  text: "EU 37",
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  selected: false,
                  text: "EU 38",
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
