import 'package:flutter/material.dart';
import 'package:kind_sprout/locator.dart';
import 'package:kind_sprout/routing/route_names.dart';
import 'package:kind_sprout/routing/router.dart';
import 'package:kind_sprout/services/navigation_service.dart';
import 'package:kind_sprout/widgets/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kind_sprout/widgets/navigation_bar/navbar.dart'
    as custom_navbar;
import 'package:kind_sprout/widgets/navigation_drawer/navigation_drawer.dart'
    as custom_drawer;

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? custom_drawer.NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              custom_navbar.NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
