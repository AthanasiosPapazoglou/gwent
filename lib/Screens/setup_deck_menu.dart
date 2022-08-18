// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/deck_select_button.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/enums.dart';

class SetupDecksMenu extends StatelessWidget {
  static const routeName = '/Setup-Decks-screen';

  Offset triggerPoint;

  @override
  Widget build(BuildContext context) {
    portraitMode();
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        print('Start');
        triggerPoint = details.globalPosition;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        if (triggerPoint.dx < details.globalPosition.dx - 50) {
          Navigator.pop(context);
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        print('End');
        triggerPoint = null;
      },
      child: Scaffold(
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
                    assets: deckAssets.monsters
                  ),
                  DeckButton(
                    imageURL: kNilfBackAD,
                    deckName: 'Nilfgaardian Empire',
                    deckColors: Colors.yellow.shade400,
                    subtitleText: kNilfDesc,
                    assets: deckAssets.nilfgaard,
                  ),
                  DeckButton(
                    imageURL: kNorthBackAD,
                    deckName: 'Northern Realms',
                    deckColors: Colors.blue.shade400,
                    subtitleText: kNorthDesc,
                    assets: deckAssets.northernRealms,
                  ),
                  DeckButton(
                    imageURL: kScoiaBackAD,
                    deckName: 'Scoia\'tael',
                    deckColors: Colors.green.shade400,
                    subtitleText: kScoiaDesc,
                    assets: deckAssets.scoiatael,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
