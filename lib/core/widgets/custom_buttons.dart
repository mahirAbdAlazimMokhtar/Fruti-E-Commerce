import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/core/constant.dart';
import 'package:fruti_market_ecommerce/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key ,this.text}): super(key: key);
   final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 60,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
              fontSize: 14,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
