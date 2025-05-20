import 'package:e_commerce_app/features/shop/home/home.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value=index ,
          backgroundColor: darkMode? TColors.white:TColors.black,
          indicatorColor: darkMode? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
            NavigationDestination(icon: Icon(Icons.heart_broken), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.people_outline_outlined), label: "Profile"),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value])
    );
  }
}


class NavigationController extends GetxController{
 final Rx<int> selectedIndex =0.obs; 

 final screens =[const HomeScreen(),Container(color: Colors.blue,),Container(color: Colors.yellow,),Container(color: Colors.red,)]; 
}
