import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/rating_share_widgets.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1  Product Image slider
            ProductImageSlider(),

            //2  product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & share Button
                  RatingAndShare(),

                  // Price, Title, Stock, & Brand
                  ProductMetaData(),

                  // Attributes
                  


                  // Checkout Button


                  // Description

                  // Review

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
