class ResponsiveUiUtil {
  static bool isDesktop(double screenWidth) {
    return screenWidth >= 1024;
  }

  static bool isTablet(double screenWidth) {
    return screenWidth >= 600 && screenWidth < 1024;
  }

  static bool isMobile(double screenWidth) {
    return screenWidth < 600;
  }
}
