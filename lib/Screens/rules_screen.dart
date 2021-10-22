// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  static const routeName = '/rules-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body:  Center(
        child: Image(
          fit: BoxFit.fill,
            image: AssetImage('GameAssets/Rules/Gwent Rules.png'),
          ),
      ),
    );
  }
}
