import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/core/utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({ this.value}) : super();
  final double ? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({ this.value}) : super();
  final double ? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
