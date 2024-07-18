import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget bigDeviceScreen;
  final Widget tabletScreen;
  final Widget smartphoneScreen;

  const ResponsiveWidget(
      {required Key key,
        required this.bigDeviceScreen,
        required this.tabletScreen,
        required this.smartphoneScreen})
      : super(key: key);

  static bool get isSmartphone => Get.width < 800;

  static bool get isBigDeviceScreen => Get.width > 1200;

  static bool get isTabletOrBigDeviceScreen => (isBigDeviceScreen || isTablet);

  static bool get isTablet {
    double width = Get.width;
    return width >= 800 && width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return bigDeviceScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return tabletScreen ?? bigDeviceScreen;
        } else {
          return smartphoneScreen ?? bigDeviceScreen;
        }
      },
    );
  }
}
