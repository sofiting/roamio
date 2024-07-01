import 'package:flutter/material.dart';
import 'package:roamio/config/const/app_const.dart';
import 'package:roamio/config/const/introduction_const.dart';
import 'package:roamio/responsive/font_size_scaler.dart';
import 'package:roamio/responsive/hight_width_scaler.dart';

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
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    HightWidthScaler scaler = HightWidthScaler();
    scaler.init(context);
    double scaledFontSize(double baseFontSize) =>
        FontSizeScaler.calculateFontSize(context, baseFontSize);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        itemCount: 5,
        itemBuilder: (context, index) {
          double parallaxOffset =
              (scrollController.position.pixels - index * size.height) * 0.5;
          bool isLeftAligned = index % 2 == 0;
          bool isLastIndex = index == 4;

          return Container(
            height: size.height,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Transform.translate(
                    offset: Offset(0, parallaxOffset),
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
                ),
                Positioned(
                  top: 120,
                  left: isLeftAligned ? 20 : null,
                  right: !isLeftAligned ? 20 : null,
                  child: Transform.translate(
                    offset: Offset(0, parallaxOffset * 0.8),
                    child: Column(
                      crossAxisAlignment: isLeftAligned
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          introTitle[index],
                          style: TextStyle(
                            color: introTextColor,
                            fontSize: scaledFontSize(42),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.6,
                          child: Text(
                            introContent[index],
                            textAlign: isLeftAligned
                                ? TextAlign.left
                                : TextAlign.right,
                            style: TextStyle(
                              color: introTextColor,
                              fontSize: scaledFontSize(18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        if (isLastIndex)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Explore',
                                  style: TextStyle(
                                    fontSize: scaledFontSize(16),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              icon: const Icon(Icons.search_rounded),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
