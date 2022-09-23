// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/deck_select_button.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/enums.dart';

class DeckSelectionMenu extends StatefulWidget {
  static const routeName = '/Setup-Decks-screen';

  @override
  State<DeckSelectionMenu> createState() => _DeckSelectionMenuState();
}

class _DeckSelectionMenuState extends State<DeckSelectionMenu> {
  Offset triggerPoint;
  int selection;

  void changeHighLightedDeck(int selectedIndex) {
    setState(() {
      selection = selectedIndex;
    });
  }

  List<String> deckCoverList = [
    'GameAssets/Back/Monsters back.png',
    'GameAssets/Back/Nilfgaardian Empire back.png',
    'GameAssets/Back/Northern Realms back.png',
    'GameAssets/Back/Scoia\'tael back.png'
  ];

  @override
  Widget build(BuildContext context) {
    //portraitMode();
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
        backgroundColor: Colors.blueGrey,
        body: Stack(
          children: [
            if (selection != null)
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  deckCoverList[selection],
                  fit: BoxFit.fill,
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 25),
                DeckButton(
                  imageURL: kMonBackAD,
                  deckName: 'Monsters',
                  deckColors: Colors.red.shade400,
                  subtitleText: kMonDesc,
                  assets: deckAssets.monsters,
                  highLightChanger: changeHighLightedDeck,
                  selectedIndex: selection,
                  deckHighlightIndex: 0,
                ),
                SizedBox(height: 50),
                DeckButton(
                  imageURL: kNilfBackAD,
                  deckName: 'Nilfgaardian Empire',
                  deckColors: Colors.yellow.shade400,
                  subtitleText: kNilfDesc,
                  assets: deckAssets.nilfgaard,
                  highLightChanger: changeHighLightedDeck,
                  selectedIndex: selection,
                  deckHighlightIndex: 1,
                ),
                SizedBox(height: 50),
                DeckButton(
                  imageURL: kNorthBackAD,
                  deckName: 'Northern Realms',
                  deckColors: Colors.blue.shade400,
                  subtitleText: kNorthDesc,
                  assets: deckAssets.northernRealms,
                  highLightChanger: changeHighLightedDeck,
                  selectedIndex: selection,
                  deckHighlightIndex: 2,
                ),
                SizedBox(height: 50),
                DeckButton(
                  imageURL: kScoiaBackAD,
                  deckName: 'Scoia\'tael',
                  deckColors: Colors.green.shade400,
                  subtitleText: kScoiaDesc,
                  assets: deckAssets.scoiatael,
                  highLightChanger: changeHighLightedDeck,
                  selectedIndex: selection,
                  deckHighlightIndex: 3,
                ),
              ],
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Slide to Return',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
