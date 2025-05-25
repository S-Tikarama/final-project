import 'package:e_commerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              BrandShowcase(
                images: [
                  TImage.productImage1,
                  TImage.facebook,
                  TImage.productImage1,
                ],
              ),
              BrandShowcase(
                images: [
                  TImage.productImage1,
                  TImage.facebook,
                  TImage.productImage1,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtnItems),

              //Products
              SectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtnItems),

              GridLayout(
                itemCount: 2,
                itemBuilder: (_, index) => ProductCartVertical(),

              ),
              const SizedBox(height: TSizes.spaceBtnSection,)
            ],
          ),
        ),
      ],
    );
  }
}
