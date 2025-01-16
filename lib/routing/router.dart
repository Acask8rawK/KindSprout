import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kind_sprout/routing/route_names.dart';
import 'package:kind_sprout/views/about/about_view.dart';
import 'package:kind_sprout/views/contacts/contacts_view.dart';
import 'package:kind_sprout/views/donate_now/donate_now.dart';
import 'package:kind_sprout/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case ContactsRoute:
      return _getPageRoute(ContactsView());
    case DonateRoute:
      return _getPageRoute((DonateView()));
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
