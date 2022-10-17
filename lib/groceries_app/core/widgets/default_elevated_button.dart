import 'package:ecommerce_app/groceries_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';



class DefaultElevatedButton extends StatelessWidget {


  const DefaultElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        minimumSize: Size.fromHeight(65.h),
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
