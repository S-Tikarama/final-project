import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/list_tile/user_profile_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

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
                  UserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtnSection),
                ],
              ),
            ),

            //Body of setings
            Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [

                // Account Settings
                SectionHeading(title: "Account setting",showActionButton: false,),
                const SizedBox(height :TSizes.spaceBtnItems),

                SettingsMenuTile(icon: Icons.location_city, title: "My Addresses", subTitle: "Set shopping delivery address",onTap: (){},)
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
