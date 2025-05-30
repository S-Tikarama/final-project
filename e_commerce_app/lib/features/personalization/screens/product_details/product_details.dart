import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/botton_add_to_cart_widget.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/rating_share_widgets.dart';
import 'package:e_commerce_app/features/personalization/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
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
                  ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtnSection),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtnSection),
                  // Description
                  SectionHeading(title: "Description", showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtnItems),
                  const ReadMoreText(
                    'This is a Product discription for White shoes. There are more things that can be added i ma just practicing and nothing else.sdfghjklsdfghsdfghjkasdfghjasdfghjkasdfghjksdfghjklzxcvksdfghjk',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Less",
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  // Review
                  const Divider(

                  ),
                  const SizedBox(height: TSizes.spaceBtnItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: "Reviews(101)",showActionButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,size: 18,))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtnSection),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
