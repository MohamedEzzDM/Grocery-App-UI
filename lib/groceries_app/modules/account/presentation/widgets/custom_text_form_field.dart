import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;




  const CustomTextFormField({Key? key, this.hintText, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(

        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.underLined
            )
        ),

        hintStyle: TextStyle(color: AppColors.grey.withOpacity(0.7),
        ),
        hintText: hintText,

      ),
    );
  }
}
