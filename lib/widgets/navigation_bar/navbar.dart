import 'package:flutter/material.dart';
import 'package:kind_sprout/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:kind_sprout/widgets/navigation_bar/navigation_bar_tablet_dekstop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
