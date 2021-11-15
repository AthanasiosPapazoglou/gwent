// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';

class Game extends StatelessWidget {
  static const routeName = '/game-screen';

  @override
  Widget build(BuildContext context) {
    landscapeMode();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('GameAssets/GameTable/GwentTable.jpg'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
