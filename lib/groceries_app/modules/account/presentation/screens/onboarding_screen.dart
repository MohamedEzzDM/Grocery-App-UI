import 'package:ecommerce_app/groceries_app/core/utils/size_config.dart';
import 'package:ecommerce_app/groceries_app/core/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/default_elevated_button.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static const String id = "/onboarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/onboarding_person.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/images/app_icon.svg",
                height: 80.h,
                width: 70.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                text: "Welcome",
                fontSize: 30.sp,
                fontColor: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
              CustomText(
                text: "to our store",
                fontSize: 30.sp,
                fontColor: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
              CustomText(
                  text: "Get your groceries in as fast as one hour",
                  fontSize: 10.sp,
                  fontColor: AppColors.offWhite,
              fontWeight: FontWeight.w400,),
              SizedBox(
                height: 40.h,
              ),
              DefaultElevatedButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              SizedBox(
                height: 70.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
