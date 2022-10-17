
import 'package:flutter/cupertino.dart';

class Gap extends StatelessWidget {
  const Gap({Key? key, this.width, this.height}) : super(key: key);
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
