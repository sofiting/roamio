import 'package:flutter/material.dart';
import 'package:roamio/responsive/font_size_scaler.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Explore',
            style: TextStyle(
              fontSize: FontSizeScaler.calculateFontSize(context, 16),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        icon: const Icon(Icons.search_rounded),
      ),
    );
  }
}
