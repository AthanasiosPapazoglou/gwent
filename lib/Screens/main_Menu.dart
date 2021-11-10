// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/widgets/menu_buttons.dart';
import 'package:gwent/Screens/game_screen.dart';
import 'package:gwent/Screens/rules_screen.dart';
import 'package:gwent/Screens/setup_deck_menu.dart';


class MainMenu extends StatelessWidget {
  static const routeName = '/main-menu';

  @override
  Widget build(BuildContext context) {
    portraitMode();
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image(
                  //height: MediaQuery.of(context).size.height,
                  image: AssetImage('GameAssets/Back/Back.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                    routeToNavigateAt: SetupDecksMenu.routeName,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Alt + Shift + F