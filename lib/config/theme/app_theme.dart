import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme();
  static Color appColor = const Color.fromARGB(255, 1, 7, 36).withOpacity(0.6);

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: appColor,
      ),
      textTheme: GoogleFonts.notoSerifTamilTextTheme(),
      appBarTheme: const AppBarTheme(centerTitle: true));
}
