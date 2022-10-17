import 'package:ecommerce_app/groceries_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/groceries_app/core/utils/size_config.dart';
import 'package:ecommerce_app/groceries_app/core/widgets/custem_text.dart';
import 'package:ecommerce_app/groceries_app/core/widgets/default_elevated_button.dart';
import 'package:ecommerce_app/groceries_app/modules/account/presentation/screens/custom_text_button.dart';
import 'package:ecommerce_app/groceries_app/modules/account/presentation/screens/signup_screen.dart';
import 'package:ecommerce_app/groceries_app/modules/account/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = "/loginScreen";

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
                height: 100.h,
              ),
              CustomText(
                text: "Loging",
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
                height: 40.h,
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
                height: 40.h,
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
              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  onPressed: () {},
                  text: 'Forget Password?',
                  fontColor: Colors.black,
                  fontSize: 8.sp,
                ),
              ),
              Gap(
                height: 30.h,
              ),
              DefaultElevatedButton(text: "Log In", onPressed: () {}),
              Gap(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Don't have an account?",
                    fontSize: 8.sp,
                    fontColor: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomTextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                    text: ' SignUp',
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
