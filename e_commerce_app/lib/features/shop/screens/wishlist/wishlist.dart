import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/icons/circular_icons.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(icon: Icons.add,onPressed: ()=>Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all( TSizes.defaultSpace),
        child: Column(
          children: [
            GridLayout(itemCount: 4, itemBuilder: (_,index)=>ProductCartVertical(
              
            ))
          ],
        ),),
      ),
    );
  }
}