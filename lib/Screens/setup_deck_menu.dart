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
                imageURL: 'GameAssets/Back/Monsters back.png',
                deckName: 'Monsters',
                assetDirectory: 'GameAssets/Decks/Monsters/',
                deckColors: Colors.red.shade400,
                subtitleText: kMonDescription,
                listToNavigateAt: monstersUnits,
              ),
              DeckButton(
                imageURL: 'GameAssets/Back/Nilfgaardian Empire back.png',
                deckName: 'Nilfgaardian Empire',
                assetDirectory: 'GameAssets/Decks/Nilfgaardian Empire/',
                deckColors: Colors.yellow.shade400,
                subtitleText: kNilfDescription,
                listToNavigateAt: nilfggardUnits,
              ),
              DeckButton(
                imageURL: 'GameAssets/Back/Northern Realms back.png',
                deckName: 'Northern Realms',
                assetDirectory: 'GameAssets/Decks/Northern Realms/',
                deckColors: Colors.blue.shade400,
                subtitleText: kNRDescription,
                listToNavigateAt: northernRealmsUnits,
              ),
              DeckButton(
                imageURL: 'GameAssets/Back/Scoia\'tael back.png',
                deckName: 'Scoia\'tael',
                assetDirectory: 'GameAssets/Decks/Scoia\'tael/',
                deckColors: Colors.green.shade400,
                subtitleText: kSCDescription,
                listToNavigateAt: ScoiataelUnits,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
