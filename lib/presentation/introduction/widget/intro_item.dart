import 'package:flutter/material.dart';
import 'package:roamio/presentation/introduction/widget/intro_background.dart';
import 'package:roamio/presentation/introduction/widget/intro_content.dart';

class IntroItem extends StatelessWidget {
  final int index;
  final ScrollController scrollController;

  const IntroItem({
    super.key,
    required this.index,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          IntroBackground(
            index: index,
            scrollController: scrollController,
          ),
          Positioned(
            top: 120,
            left: index % 2 == 0 ? 20 : null,
            right: index % 2 != 0 ? 20 : null,
            child: IntroContent(
              index: index,
            ),
          ),
        ],
      ),
    );
  }
}
