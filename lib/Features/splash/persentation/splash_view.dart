import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/Features/splash/persentation/widgets/splash_body.dart';
import 'package:fruti_market_ecommerce/core/constant.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}
