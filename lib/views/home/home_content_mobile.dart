import 'package:flutter/material.dart';
import 'package:kind_sprout/widgets/call_to_action/call_to_action.dart';
import 'package:kind_sprout/widgets/wapp_details/wapp_detail.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WappDetail(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Donate Now'),
      ],
    );
  }
}
