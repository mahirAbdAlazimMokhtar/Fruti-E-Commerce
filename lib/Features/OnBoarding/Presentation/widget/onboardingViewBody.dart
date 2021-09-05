import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruti_market_ecommerce/Features/OnBoarding/Presentation/widget/custom_page_view.dart';
import 'package:fruti_market_ecommerce/core/constant.dart';
import 'package:fruti_market_ecommerce/core/utils/size_config.dart';
import 'package:fruti_market_ecommerce/core/widgets/custom_buttons.dart';

import 'custom_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key, this.dotIndex}) : super(key: key);
final double? dotIndex;

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)..addListener(() { setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController,),
        Positioned(
          bottom: SizeConfig.defaultSize! * 23,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients?pageController?.page:0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients? pageController?.page==2 ? false :true : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            bottom: SizeConfig.defaultSize! * 10,
            child: Text('Skip'),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              text:  pageController!.hasClients ? (pageController?.page == 2 ? 'Get Started' :'Next'):'Next' ,
            )),
      ],
    );
  }
}
