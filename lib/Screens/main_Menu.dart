// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/widgets/menu_buttons.dart';
import 'package:gwent/Screens/game_screen.dart';
import 'package:gwent/Screens/rules_screen.dart';
import 'package:gwent/Screens/setup_deck_menu.dart';
import 'package:http/http.dart' as http;

import '../App-Utilities/deckDataBase.dart';
import '../Routes/route_name.dart';

class MainMenuScreen extends StatelessWidget {
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
                  child: FutureBuilder<Directory>(
                future: getFilesStorageDir(),
                builder: (context, snapshot) {
                  return snapshot.data != null
                      ? Image.file(
                          File(
                              '${snapshot.data?.path}/GameAssets/Back/Back.png'),
                          fit: BoxFit.fill,
                        )
                      : Container();
                },
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuButtons(
                    buttonTitle: 'PLAY GAME',
                    routeToNavigateAt: RouteName.game,
                  ),
                  MenuButtons(
                    buttonTitle: 'HOW TO PLAY',
                    routeToNavigateAt: RouteName.rules,
                  ),
                  MenuButtons(
                    buttonTitle: 'SETUP DECKS',
                    routeToNavigateAt: RouteName.deckSetup,
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