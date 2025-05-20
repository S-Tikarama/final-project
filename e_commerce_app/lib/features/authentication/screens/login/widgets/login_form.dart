
import 'package:e_commerce_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtnSection,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtnInputField),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: TTexts.password,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtnInputField / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
              children: [
                //Remember me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),
                Spacer(),
    
                //Forget Password
                TextButton(
                  onPressed: () =>Get.to(()=>const ForgotPassword()),
                  child: Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtnSection),
            //SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.to(()=> const NavigationMenu()),
                child: Text(TTexts.signIn),
              ),
            ),
            SizedBox(height: TSizes.spaceBtnItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () =>Get.to(()=>const SignupScreen()),
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
