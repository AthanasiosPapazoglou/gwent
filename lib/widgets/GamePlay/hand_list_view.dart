// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/GamePlay/roll_card_item.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class HandListView extends StatefulWidget {
  final String playerDeckPath;
  final int renderIndex;

  HandListView({required this.playerDeckPath, required this.renderIndex});

  @override
  State<HandListView> createState() => _HandListViewState();
}

class _HandListViewState extends State<HandListView> {
  
  bool isFirstRender = true;

  @override
  Widget build(BuildContext context) {
    // Providing
    final customDecks = Provider.of<CustomDecks>(context);

    final List<List<UnitCard>> customDeckDB = [
      customDecks.monstersUnitsUnselected, //0
      customDecks.monstersUnitsSelected, //1
      customDecks.nilfggardUnitsUnselected, //2
      customDecks.nilfggardUnitsSelected, //3
      customDecks.unselectedNorthernRealmsUnits, //4
      customDecks.selectedNorthernRealmsUnits, //5
      customDecks.unselectedScoiataelUnits, //6
      customDecks.selectedScoiataelUnits, //7
      customDecks.handCards, //8
    ];

    // Our hand, a Random math Instance & a variable to save the result
    final Random _random = Random();
    int randomPick;

    // This will populate our hand with 10 random cards from the selected deck
    if (isFirstRender){
    for (int i = 0; i < 10; i++) {
      randomPick = _random.nextInt(customDeckDB[widget.renderIndex].length);


      while (customDeckDB[8].contains(customDeckDB[widget.renderIndex][randomPick])) {
        randomPick = _random.nextInt(customDeckDB[widget.renderIndex].length);
      }
      customDeckDB[8].add(customDeckDB[widget.renderIndex][randomPick]);
    }
    setState(() {
      isFirstRender = false;
    });
    }

    print(customDeckDB[8]);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8.0),
      itemCount: customDeckDB[8].length,
      itemBuilder: (ctx, i) {
        return RollListCardItem(
          deckAssetsPath: widget.playerDeckPath, 
          cardName: customDeckDB[8][i].cardName, 
          renderIndex: widget.renderIndex
          );
      },
    );
  }
}

// deckAssetsPath: playerDeckPath, 
// cardName: handCards[i].cardName,