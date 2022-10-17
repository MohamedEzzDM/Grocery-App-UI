import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce_app/groceries_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/groceries_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const id = "/";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AnimatedSplashScreen(
      duration: 2000,
      backgroundColor: AppColors.primaryColor,
      splash: Center(

        child: SvgPicture.asset(
          "assets/images/logo.svg",
          height: 68.h,
          width: 267.w,
        ),
      ),
      nextScreen: const OnboardingScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
