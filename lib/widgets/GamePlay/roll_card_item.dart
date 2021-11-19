// ignore_for_file: file_names, use_key_in_widget_constructors, list_remove_unrelated_type

import 'package:flutter/material.dart';
import 'package:gwent/widgets/GamePlay/hand_list_view.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'dart:math';

class RollListCardItem extends StatelessWidget {
  final String deckAssetsPath;
  final String cardName;
  final int renderIndex;

  RollListCardItem({
      required this.deckAssetsPath,
      required this.cardName,
      required this.renderIndex
      });

  @override
  Widget build(BuildContext context) {
    
    final customDecks = Provider.of<CustomDecks>(context);
    final Random _random = Random();
    int _randomPick;
    int indexIndicator;

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

    return GridTile(
      child: InkWell(
        onTap: () {
          _randomPick = _random.nextInt(customDeckDB[renderIndex].length);
          
          while(customDeckDB[8].contains(customDeckDB[renderIndex][_randomPick],)){
          _randomPick = _random.nextInt(customDeckDB[renderIndex].length);
          }
          /////////
          indexIndicator = customDeckDB[8].indexWhere((element) => element.cardName == cardName);
          customDeckDB[8].remove(customDeckDB[8][indexIndicator]);
          customDeckDB[8].insert(indexIndicator, customDeckDB[renderIndex][_randomPick]);
          ////////
          //customDeckDB[8].removeWhere((element) => element.cardName == cardName);
          //customDeckDB[8].add(customDeckDB[renderIndex][_randomPick]);
          customDecks.cardsRerolled++;
          customDecks.refreshLists();
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.265,
            image: AssetImage('$deckAssetsPath$cardName'),
          ),
        ),
      ),
    );
  }
}
