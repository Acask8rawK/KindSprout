import 'package:flutter/material.dart';

class WappDetail extends StatelessWidget {
  const WappDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'WELCOME TO \nKindSprout !',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'KindSprout is a user-friendly donation platform designed to make giving easy, impactful, and meaningful. Connect with causes you care about, contribute effortlessly, and watch your generosity grow into positive change. Together, we shall nurture kindness and build a better world.',
            style: TextStyle(fontSize: 21, height: 1.7),
          )
        ],
      ),
    );
  }
}
