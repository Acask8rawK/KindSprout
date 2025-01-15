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
              'KindSprout is a user-friendly donation platform designed to make giving easy, impactful, and meaningful.')
        ],
      ),
    );
  }
}
