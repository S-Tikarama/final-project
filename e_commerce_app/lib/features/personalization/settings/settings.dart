import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/list_tile/user_profile_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/widgets/profile.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtnSection),

                  // User Profile card
                  UserProfileTile(onPressed:()=>Get.to(()=>const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtnSection),
                ],
              ),
            ),

            //Body of setings
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  SectionHeading(
                    title: "Account settingS",
                    
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtnItems),

                  SettingsMenuTile(
                    icon: Icons.home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Icons.shopping_bag,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Icons.check_circle,
                    title: "My Orders",
                    subTitle: "In-progress and Completed Orders",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Icons.account_balance,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Icons.discount,
                    title: "My Coupons",
                    subTitle: "List of all the discounyed coupons",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Icons.notifications,
                    title: "Notificatrions",
                    subTitle: "Set any kind the notification message",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Icons.security,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtnSection),
                  SectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtnItems),
                  SettingsMenuTile(
                    icon: Icons.upload_file_outlined,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),

                  SettingsMenuTile(
                    icon: Icons.location_on,
                    title: 'Geolocation',
                    subTitle: "Set recommedation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Icons.person,
                    title: 'Safe Mode',
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Icons.image,
                    title: 'HD image Quality',
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // logout Button
                  const SizedBox(height: TSizes.spaceBtnSection),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtnSection * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
