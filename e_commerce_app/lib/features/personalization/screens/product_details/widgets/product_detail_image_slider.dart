import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            //Main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(TImage.productImage1)),
                ),
              ),
            ),
            // image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder:
                      (_, __) => const SizedBox(width: TSizes.spaceBtnItems),
                  itemCount: 6,
                  itemBuilder:
                      (_, index) => RoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSizes.sm),
                        imageUrl: TImage.productImage2,
                      ),
                ),
              ),
            ),
            //Appbar Icons
            TAppBar(
              showBackarrow: true,
              actions: [CircularIcon(icon: Icons.favorite, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
