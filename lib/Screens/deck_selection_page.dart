// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/deck_select_button.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/enums.dart';

import '../widgets/general/page_dismiss_app_bar.dart';
import 'customise_deck.dart';

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
    'GameAssets/CropedBackground/Eredin Bringer of Death.png',
    'GameAssets/CropedBackground/Emhyr var Emreis the Relentless.png',
    'GameAssets/CropedBackground/Foltest King of Temeria.png',
    'GameAssets/CropedBackground/Francesca Findabair Daisy of The Valle.png'
  ];

  List<Color> customiseButtonColorScheme = [
    Colors.red.shade400,
    Colors.yellow.shade400,
    Colors.blue.shade400,
    Colors.green.shade400,
  ];

  @override
  Widget build(BuildContext context) {
    //portraitMode();
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        triggerPoint = details.globalPosition;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        if (triggerPoint.dx < details.globalPosition.dx - 50) {
          Navigator.pop(context);
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        triggerPoint = null;
      },
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Stack(
          alignment: Alignment.center,
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
              top: 0,
              child: DismissPromptAppBar()),
            Positioned(
              bottom: 25,
              child: GestureDetector(
                onTap: () {
                  if (selection != null) {
                    Navigator.pushNamed(context, CustomiseDeck.routeName);
                  }
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          'Customise',
                          style: TextStyle(
                            fontSize: 25,
                            color: (selection != null)
                                ? customiseButtonColorScheme[selection]
                                : Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.7),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          if (selection != null)
                            BoxShadow(
                              color: customiseButtonColorScheme[selection]
                                  .withOpacity(.8),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 0),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
