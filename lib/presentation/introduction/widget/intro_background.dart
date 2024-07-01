import 'package:flutter/material.dart';

class IntroBackground extends StatelessWidget {
  final int index;
  final ScrollController scrollController;

  const IntroBackground({
    super.key,
    required this.index,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Transform.translate(
        offset: Offset(
          0,
          (scrollController.position.pixels -
                  index * MediaQuery.of(context).size.height) *
              0.5,
        ),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
          child: Image.asset(
            'assets/image/intro${index + 1}.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
