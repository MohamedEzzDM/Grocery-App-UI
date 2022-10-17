import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.fontColor,
      this.fontWeight})
      : super(key: key);

  final String text;
  final double fontSize;
  final Color fontColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: fontColor,
          fontFamily: "Gilroy"),
    );
  }
}
