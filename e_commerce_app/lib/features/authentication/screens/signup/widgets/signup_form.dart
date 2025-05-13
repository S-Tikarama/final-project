
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupForm extends StatelessWidget {
  const SignupForm();

 

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
    
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefix: Icon(Icons.verified_user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtnInputField),
              Expanded(
                child: TextFormField(
                  expands: false,
    
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefix: Icon(Icons.verified_user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtnInputField),
          // Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefix: Icon(Icons.verified_user),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtnInputField),
          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefix: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtnInputField),
          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefix: Icon(Icons.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtnInputField),
          // Password
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefix: Icon(Icons.lock),
              suffix: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtnSection),
    
          //Terms and conditions Checkbox
          TermsAndConditions(),
          const SizedBox(height: TSizes.spaceBtnSection),
    

          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=> VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
