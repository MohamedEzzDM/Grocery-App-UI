import 'package:ecommerce_app/groceries_app/core/utils/size_config.dart';
import 'package:ecommerce_app/groceries_app/core/widgets/custem_text.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final Color fontColor;
  final double fontSize;

  const CustomTextButton({
    Key? key, required this.onPressed, required this.text, required this.fontColor, required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap
      ),
        onPressed: onPressed,
        child: CustomText(
          text: text,
          fontSize: fontSize,
          fontColor: fontColor,
          fontWeight: FontWeight.w600,
        ));
  }
}
