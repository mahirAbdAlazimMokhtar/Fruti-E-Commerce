import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/core/constant.dart';
class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex}) : super(key: key);
  final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,

      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: kMainColor),
          borderRadius: BorderRadius.circular(8),
        )),);
  }
}
