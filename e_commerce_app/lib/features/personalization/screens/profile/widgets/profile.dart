import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackarrow: true, title: Text('Profile')),

      //Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(
                    image: TImage.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Change profile picture'),
                  ),
                ],
              ),
            ),
            //Details
            const SizedBox(height: TSizes.spaceBtnItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtnItems),

            //Heading Profile Info
            SectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtnItems),
            ProfileMenu(title: 'Name', value: 'Tikaram Subedi', onPressed: () {},),
            ProfileMenu(title: 'Username', value: 'Tikaram Subedi', onPressed: () {},),


            
            const SizedBox(height: TSizes.spaceBtnItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtnItems),

            //Heading Personal Info
            SectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtnItems),
            ProfileMenu(title: 'User ID', value: '1234567',icon: Icons.copy, onPressed: (){},),
            ProfileMenu(title: 'E-mail', value: 'tikaramasubedi@gmail.com', onPressed: (){},),
            ProfileMenu(title: 'Phone Number', value: '9867776639', onPressed: (){},),
            ProfileMenu(title: 'Gender', value: 'Male', onPressed: (){},),
            ProfileMenu(title: 'Date of Birth', value: '21 Aug, 2000', onPressed: (){}),
            const Divider(),
            const SizedBox(
               height: TSizes.spaceBtnItems,
            ),
            Center(
              child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color:Colors.red),)),
            )
          ],
        ),
      ),
    );
  }
}
