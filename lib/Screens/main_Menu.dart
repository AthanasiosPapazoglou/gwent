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
    //portraitMode();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Positioned.fill(
          //   child: Image(
          //     fit: BoxFit.fill,
          //     image: AssetImage('GameAssets/Back/Back.png'),
          //   ),
          // ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image(
              image: AssetImage('GameAssets/Back/Back.png'),
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 48,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.amber[50],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12, 12, 16, 12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.amber[50],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  //TODO fix this properly
                  onTap: () {
                    final snackBar = SnackBar(
                      content: const Text('Yay! A SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                  },
                  child: MenuButtons(
                    buttonTitle: 'PLAY GAME',
                    routeToNavigateAt: Game.routeName,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MenuButtons(
                  buttonTitle: 'HOW TO PLAY',
                  routeToNavigateAt: Rules.routeName,
                ),
                SizedBox(
                  height: 30,
                ),
                MenuButtons(
                  buttonTitle: 'SETUP DECKS',
                  routeToNavigateAt: SetupDecksMenu.routeName,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Alt + Shift + F