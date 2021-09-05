import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/Features/OnBoarding/Presentation/onboardingView.dart';
import 'package:fruti_market_ecommerce/Features/OnBoarding/Presentation/widget/onboardingViewBody.dart';
import 'package:fruti_market_ecommerce/core/utils/size_config.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //this line to know your screen Size
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Image.asset(
            'assets/image/splash_view_image.png',
          )
        ],
      ),
    );
  }
/*
* this method to navigate between to screens
* the Future.delayed for delay some second
* Get.to ==> to navigate between the screen
* transition ==> to add animation between to move to another screen
* */
  void goToNextView() {
    Future.delayed(Duration(seconds: 3,),(){
      Get.to(()=>OnBoardingView(),transition: Transition.fade);
    });
  }
}


