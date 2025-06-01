import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImage.user)),
                const SizedBox(width: TSizes.spaceBtnItems),
                Text(
                  "Mr Suriya",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtnItems),

        //Review
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtnItems),
            Text("21 Aug,2000", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtnItems),
        //dummy text
        ReadMoreText(
          "For an e-commerce business, consider using text message templates for various customer interactions. These templates can automate order confirmations, shipping updates, delivery notifications, and even abandoned cart recovery. Additional options include new product announcements, promotional offers, and customer service reminders. ",

          trimLines: 1,
          trimExpandedText: "show less",

          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),

        const SizedBox(height: TSizes.spaceBtnItems),

        //Company Review
        RoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fabric Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "21 Aug,2000",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(width: TSizes.spaceBtnItems),
                //dummy text for reply
                ReadMoreText(
                  "For reply an e-commerce business, consider using text message templates for various customer interactions. These templates can automate order confirmations, shipping updates, delivery notifications, and even abandoned cart recovery. Additional options include new product announcements, promotional offers, and customer service reminders. ",

                  trimLines: 1,
                  trimExpandedText: "show less",

                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtnSection,)
      ],
    );
  }
}
