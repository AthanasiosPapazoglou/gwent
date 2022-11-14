// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';

import '../widgets/general/page_dismiss_app_bar.dart';

class Rules extends StatelessWidget {
  static const routeName = '/rules-screen';

  Offset triggerPoint;

  @override
  Widget build(BuildContext context) {
    //portraitMode();
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        triggerPoint = details.globalPosition;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        if (triggerPoint.dx < details.globalPosition.dx - 50) {
          Navigator.pop(context);
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        triggerPoint = null;
      },
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Stack(children: [
          Image(
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            image: AssetImage('GameAssets/Rules/Gwent Rules.png'),
          ),
          Positioned(top: 0, child: DismissPromptAppBar())
        ]),
      ),
    );
  }
}
