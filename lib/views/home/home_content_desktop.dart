import 'package:flutter/material.dart';
import 'package:kind_sprout/locator.dart';
import 'package:kind_sprout/routing/route_names.dart';
import 'package:kind_sprout/services/navigation_service.dart';
import 'package:kind_sprout/widgets/call_to_action/call_to_action.dart';
import 'package:kind_sprout/widgets/wapp_details/wapp_detail.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(DonateRoute);
      },
      child: Row(
        children: <Widget>[
          WappDetail(),
          Expanded(
              child: Center(
            child: CallToAction('Donate Now'),
          ))
        ],
      ),
    );
  }
}
