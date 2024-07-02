import 'package:flutter/material.dart';
import 'package:roamio/config/const/app_const.dart';
import 'package:roamio/config/theme/app_theme.dart';
import 'package:roamio/responsive/font_size_scaler.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double baseFontSize;
  final Color appBarItemColor;

  const CustomAppBar({
    super.key,
    required this.baseFontSize,
    required this.appBarItemColor,
  });

  @override
  Widget build(BuildContext context) {
    double scaledFontSize(double baseFontSize) =>
        FontSizeScaler.calculateFontSize(context, baseFontSize);

    return AppBar(
      backgroundColor: AppTheme.appColor,
      title: Text(
        appName,
        style: TextStyle(
          fontSize: scaledFontSize(baseFontSize),
          color: appBarItemColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: scaledFontSize(baseFontSize),
          color: appBarItemColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            size: scaledFontSize(baseFontSize),
            color: appBarItemColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
