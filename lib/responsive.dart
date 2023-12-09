import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  static const mobileThreshold = 500;
  static const largeMobileThreshold = 700;
  static const desktopThreshold = 1225;

  const Responsive(
      {super.key,
      required this.mobile,
      this.mobileLarge,
      this.tablet,
      required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileThreshold;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= largeMobileThreshold;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopThreshold;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopThreshold;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= desktopThreshold)
      return desktop;
    else if (_size.width >= largeMobileThreshold && tablet != null)
      return tablet!;
    else if (_size.width >= 450 && mobileLarge != null)
      return mobileLarge!;
    else
      return mobile;
  }
}
