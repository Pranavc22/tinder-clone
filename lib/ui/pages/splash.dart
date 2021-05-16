import 'package:flutter/material.dart';

import '../constants.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColour,
      body: Container(
        width: size.width,
        child: Center(
          child: Text(
            'Chill',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.2),
          ),
        ),
      ),
    );
  }
}
