import 'package:flutter/material.dart';
import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,@required  this.pageController})
      : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/image/onboarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/image/onboarding2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery ',
        ),
        PageViewItem(
          image: 'assets/image/onboarding3.png',
          title: 'Deliver Arrived',
          subTitle: 'Order is arrived at your place',
        ),
      ],
    );
  }
}
