import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/Features/splash/persentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff69A03A),
      body: SplashViewBody(),
    );
  }
}
