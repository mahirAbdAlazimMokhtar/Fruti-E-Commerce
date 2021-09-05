import 'package:flutter/material.dart';
import 'package:fruti_market_ecommerce/core/utils/size_config.dart';
import 'package:fruti_market_ecommerce/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.image, this.title, this.subTitle})
      : super(key: key);
  final String? image;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(
          value: 20,
        ),
        SizedBox(
            height: SizeConfig.defaultSize! * 20, child: Image.asset(image!)),
        const VerticalSpace(
          value: 2.5,
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(
          value: 1.5,
        ),
        Text(
          subTitle!,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
