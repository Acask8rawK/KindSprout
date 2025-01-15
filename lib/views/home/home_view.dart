import 'package:flutter/material.dart';
import 'package:kind_sprout/views/home/home_content_desktop.dart';
import 'package:kind_sprout/views/home/home_content_mobile.dart';
import 'package:kind_sprout/widgets/centered_view/centered_view.dart';
import 'package:kind_sprout/widgets/navigation_bar/navbar.dart'
    as custom_navbar;
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(children: <Widget>[
          custom_navbar.NavigationBar(),
          Expanded(
              // ignore: deprecated_member_use
              child: ScreenTypeLayout(
            mobile: HomeContentMobile(),
            desktop: HomeContentDesktop(),
          )),
        ]),
      ),
    );
  }
}
