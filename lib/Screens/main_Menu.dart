// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/widgets/menu_buttons.dart';
import 'package:gwent/Screens/game_screen.dart';
import 'package:gwent/Screens/rules_screen.dart';
import 'package:gwent/Screens/setup-deck_screen.dart';

class MainMenu extends StatelessWidget {
  static const routeName = '/main-menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Image(
                  image: AssetImage('GameAssets/Back/Neutral back.png'),
                ),
              ),
            MenuButtons(
              buttonTitle: 'PLAY GAME',
              routeToNavigateAt: Game.routeName,
            ),
            MenuButtons(
              buttonTitle: 'HOW TO PLAY',
              routeToNavigateAt: Rules.routeName,
            ),
            MenuButtons(
              buttonTitle: 'SETUP DECKS',
              routeToNavigateAt: SetupDecks.routeName,
            ),
          ],
        ),
      ),
    );
  }
}

//Alt + Shift + F