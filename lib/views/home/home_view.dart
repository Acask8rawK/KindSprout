import 'package:flutter/material.dart';
import 'package:kind_sprout/widgets/call_to_action/call_to_action.dart';
import 'package:kind_sprout/widgets/centered_view/centered_view.dart';
import 'package:kind_sprout/widgets/navigation_bar/navbar.dart'
    as custom_navbar;
import 'package:kind_sprout/widgets/wapp_details/wapp_detail.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            custom_navbar.NavigationBar(),
            Expanded(
                child: Row(
              children: <Widget>[
                WappDetail(),
                Expanded(
                    child: Center(
                  child: CallToAction('Donate Now'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
