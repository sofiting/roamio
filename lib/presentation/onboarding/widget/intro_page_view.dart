import 'package:flutter/material.dart';
import 'package:roamio/config/const/onboarding_const.dart';
import 'package:roamio/presentation/onboarding/slide.dart';

class IntroPageView extends StatelessWidget {
  const IntroPageView({
    super.key,
    required this.pageViewController,
  });

  final PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      physics: const BouncingScrollPhysics(),
      children: slides
          .map((slideData) => Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl,
                titleSize: 24.0,
                captionSize: 17.0,
              ))
          .toList(),
    );
  }
}
