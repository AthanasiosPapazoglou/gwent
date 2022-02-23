// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/deck_select_button.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/enums.dart';

class SetupDecksMenuScreen extends StatelessWidget {
  static const routeName = '/Setup-Decks-screen';

  @override
  Widget build(BuildContext context) {
    portraitMode();
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
                    deckColors: Colors.red.shade400,
                    subtitleText: kMonDesc,
                    assets: DeckAsset.monsters),
                DeckButton(
                  imageURL: kNilfBackAD,
                  deckName: 'Nilfgaardian Empire',
                  deckColors: Colors.yellow.shade400,
                  subtitleText: kNilfDesc,
                  assets: DeckAsset.nilfgaard,
                ),
                DeckButton(
                  imageURL: kNorthBackAD,
                  deckName: 'Northern Realms',
                  deckColors: Colors.blue.shade400,
                  subtitleText: kNorthDesc,
                  assets: DeckAsset.northernRealms,
                ),
                DeckButton(
                  imageURL: kScoiaBackAD,
                  deckName: 'Scoia\'tael',
                  deckColors: Colors.green.shade400,
                  subtitleText: kScoiaDesc,
                  assets: DeckAsset.scoiatael,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
