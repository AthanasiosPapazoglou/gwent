import 'package:flutter/material.dart';

class Game extends StatelessWidget {

  static const routeName = '/game-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('GAME SCREEN', style: TextStyle(color: Colors.red),),
      
    );
  }
}