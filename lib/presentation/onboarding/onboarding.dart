import 'package:flutter/material.dart';
import 'package:roamio/config/const/onboarding_const.dart';
import 'package:roamio/presentation/onboarding/widget/onboarding_main_stack.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  static const String name = 'onboarding_screen';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  final PageController pageViewController = PageController();
  bool endReached = false;
  int currentPage = 0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      currentPage = page.round();
      setState(() {});
      if (!endReached && page >= (slides.length - 1.5)) {
        endReached = true;
        setState(() {});
        _animationController.forward();
      } else if (endReached && page < (slides.length - 1.5)) {
        endReached = false;
        setState(() {});
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: OnboardingMainStack(
            pageViewController: pageViewController,
            currentPage: currentPage,
            endReached: endReached,
            animationController: _animationController,
          ),
        );
      },
    );
  }
}
