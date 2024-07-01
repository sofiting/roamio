import 'package:flutter/material.dart';
import 'package:roamio/config/const/introduction_const.dart';
import 'package:roamio/presentation/introduction/widget/intro_item.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  static String name = "introduction";

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        itemCount: introTitle.length,
        itemBuilder: (context, index) {
          return IntroItem(
            index: index,
            scrollController: scrollController,
          );
        },
      ),
    );
  }
}
