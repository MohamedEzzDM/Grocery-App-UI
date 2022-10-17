import 'package:ecommerce_app/groceries_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custem_text.dart';
import '../../../../core/widgets/default_elevated_button.dart';
import '../../../../core/widgets/gap.dart';
import '../widgets/custom_text_form_field.dart';
import 'custom_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static const String id = "/signupScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(
                height: 70.h,
              ),
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset("assets/images/app_logo_orange.svg",
                    alignment: Alignment.center),
              ),
              Gap(
                height: 80.h,
              ),
              CustomText(
                text: "Sign Up",
                fontSize: 15.sp,
                fontColor: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              Gap(
                height: 10.h,
              ),
              CustomText(
                  text: "Enter your emails and password",
                  fontSize: 9.sp,
                  fontColor: AppColors.grey,
                  fontWeight: FontWeight.w600),
              Gap(
                height: 30.h,
              ),
              CustomText(
                text: "Username",
                fontSize: 10.sp,
                fontColor: AppColors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomTextFormField(
                hintText: "Enter your Username",
              ),
              Gap(
                height: 30.h,
              ),
              CustomText(
                text: "Email",
                fontSize: 10.sp,
                fontColor: AppColors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomTextFormField(
                hintText: "Enter your Email",
              ),
              Gap(
                height: 30.h,
              ),
              CustomText(
                text: "Password",
                fontSize: 10.sp,
                fontColor: AppColors.grey,
                fontWeight: FontWeight.w700,
              ),
              const CustomTextFormField(
                hintText: "Enter your password",

              ),
              Gap(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: "By  Continuing  you  agree to our ",
                      fontSize: 8.sp,
                      fontColor: AppColors.grey,
                      fontWeight: FontWeight.w600
                  ),
                  CustomTextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                    text: ' Terms of Service',
                    fontColor: AppColors.primaryColor,
                    fontSize: 8.sp,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: "and ",
                      fontSize: 8.sp,
                      fontColor: AppColors.grey,
                      fontWeight: FontWeight.w600
                  ),
                  CustomTextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                    text: 'Privacy Policy.',
                    fontColor: AppColors.primaryColor,
                    fontSize: 8.sp,
                  ),
                ],
              ),
              Gap(
                height: 20.h,
              ),

              DefaultElevatedButton(text: "Sign Up", onPressed: () {}),
              Gap(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Already have an account?",
                    fontSize: 8.sp,
                    fontColor: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomTextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: ' SignIn',
                    fontColor: AppColors.primaryColor,
                    fontSize: 8.sp,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
