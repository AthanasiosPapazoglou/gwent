// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/Screens/game_screen.dart';
import 'package:gwent/Screens/main_Menu.dart';
import 'package:gwent/Screens/setup_deck_menu.dart';



class MidBarNav extends StatelessWidget {

  final String playerDeckPath;
  final int renderIndex;

  MidBarNav({required this.playerDeckPath, required this.renderIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Game(playerDeckPath: playerDeckPath, renderIndex: renderIndex)),
  );
            //Navigator.pushNamed(context, Game.routeName);
            },
          child: Container(
            width: 48,
            height: 27,
            child: Center(
              child: Text(
                'PLAY',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red.shade600,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              border: Border.all(color: Colors.red.shade600),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MainMenu.routeName);
          },
          child: Container(
            width: 48,
            height: 27,
            child: Center(
              child: Text(
                'MENU',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.yellow,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              border: Border.all(color: Colors.yellow),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SetupDecksMenu.routeName);
          },
          child: Container(
            width: 48,
            height: 27,
            child: Center(
              child: Text(
                'DECKS',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ],
    );
  }
}
