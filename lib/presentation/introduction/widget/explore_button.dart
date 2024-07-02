import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roamio/config/theme/app_theme.dart';
import 'package:roamio/responsive/font_size_scaler.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        onPressed: () {
          context.go('/login');
        },
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Explore',
            style: TextStyle(
              fontSize: FontSizeScaler.calculateFontSize(context, 12),
              fontWeight: FontWeight.w600,
              color: AppTheme.appColor,
            ),
          ),
        ),
        icon: Icon(
          Icons.search_rounded,
          size: 25,
          color: AppTheme.appColor,
        ),
      ),
    );
  }
}
