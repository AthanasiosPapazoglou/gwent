// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/controllers/decks_controller.dart';
import 'package:gwent/widgets/menu_buttons.dart';
import 'package:gwent/Screens/game_screen.dart';
import 'package:gwent/Screens/rules_screen.dart';
import 'package:gwent/Screens/deck_selection_page.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatelessWidget {
  static const routeName = '/main-menu';

  @override
  Widget build(BuildContext context) {
    DecksController globalState = DecksController();
    final bool isEligibleToPlay =
        (globalState.monstersUnitsSelected.isNotEmpty ||
            globalState.ScoiataelUnitsSelected.isNotEmpty ||
            globalState.nilfggardUnitsSelected.isNotEmpty ||
            globalState.NorthernRealmsUnitsSelected.isNotEmpty);
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
                MenuButtons(
                  buttonTitle: 'PLAY GAME',
                  routeToNavigateAt: Game.routeName,
                  isEligibleToPlay: isEligibleToPlay,
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
                  routeToNavigateAt: DeckSelectionMenu.routeName,
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