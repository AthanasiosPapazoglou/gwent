// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/widgets/deck_select_button.dart';
import 'package:gwent/App-Utilities/constants.dart';

class SetupDecksMenu extends StatelessWidget {
  static const routeName = '/Setup-Decks-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black54,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <DeckButton>[
              DeckButton(
                imageURL: kMonBackAD,
                deckName: 'Monsters',
                assetDirectory: kMonUnitsAD,
                deckColors: Colors.red.shade400,
                subtitleText: kMonDesc,
                listToRender: monstersUnits,
              ),
              DeckButton(
                imageURL: kNilfBackAD,
                deckName: 'Nilfgaardian Empire',
                assetDirectory: kNilfUnitsAD,
                deckColors: Colors.yellow.shade400,
                subtitleText: kNilfDesc,
                listToRender: nilfggardUnits,
              ),
              DeckButton(
                imageURL: kNorthBackAD,
                deckName: 'Northern Realms',
                assetDirectory: kNorthUnitsAD,
                deckColors: Colors.blue.shade400,
                subtitleText: kNorthDescription,
                listToRender: northernRealmsUnits,
              ),
              DeckButton(
                imageURL: kScoiaBackAD,
                deckName: 'Scoia\'tael',
                assetDirectory: kScoiaUnitsAD,
                deckColors: Colors.green.shade400,
                subtitleText: kScoiaDesc,
                listToRender: ScoiataelUnits,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
