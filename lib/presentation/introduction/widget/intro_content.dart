import 'package:flutter/material.dart';
import 'package:roamio/presentation/introduction/widget/explore_button.dart';
import 'package:roamio/presentation/introduction/widget/intro_text.dart';
import 'package:roamio/presentation/introduction/widget/intro_title.dart';

class IntroContent extends StatelessWidget {
  final int index;

  const IntroContent({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          index % 2 == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        IntroTitle(index: index),
        const SizedBox(height: 10),
        IntroText(index: index),
        const SizedBox(height: 30),
        if (index == 4) const ExploreButton(),
      ],
    );
  }
}
