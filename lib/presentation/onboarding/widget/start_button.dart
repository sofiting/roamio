import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roamio/config/theme/app_theme.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required AnimationController animationController,
  }) : _animationController = animationController;

  final AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: FilledButton(
        onPressed: () => context.go('/signup'),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(AppTheme.appColor),
        ),
        child: const Text(
          'Start',
        ),
      ),
    );
  }
}
