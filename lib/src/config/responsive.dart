import 'package:flutter/material.dart';

class MyResponsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const MyResponsive({Key? key, this.mobile, this.tablet, this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop ?? const SizedBox();
      } else if (constraints.maxWidth >= 650) {
        return tablet ?? const SizedBox();
      } else {
        return mobile ?? const SizedBox();
      }
    });
  }
}
