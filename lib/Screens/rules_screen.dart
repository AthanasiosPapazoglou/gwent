// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';

class Rules extends StatelessWidget {
  static const routeName = '/rules-screen';

  Offset triggerPoint;

  @override
  Widget build(BuildContext context) {
    //portraitMode();
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        print('Start');
        triggerPoint = details.globalPosition;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        if (triggerPoint.dx < details.globalPosition.dx - 50) {
          Navigator.pop(context);
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        print('End');
        triggerPoint = null;
      },
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: Image(
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            image: AssetImage('GameAssets/Rules/Gwent Rules.png'),
          ),
        ),
      ),
    );
  }
}
