// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';

class Rules extends StatelessWidget {
  static const routeName = '/rules-screen';

  @override
  Widget build(BuildContext context) {
    portraitMode();
    return Scaffold(
      backgroundColor: Colors.black54,
      body:  Center(
        child: Image(
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            image: AssetImage('GameAssets/Rules/Gwent Rules.png'),
          ),
      ),
    );
  }
}
