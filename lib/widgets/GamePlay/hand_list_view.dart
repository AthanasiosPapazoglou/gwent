// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/controllers/decks_controller.dart';
import 'package:gwent/widgets/GamePlay/roll_card_item.dart';
import 'package:provider/provider.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'dart:math';
import 'package:gwent/App-Utilities/enums.dart';

class HandListView extends StatefulWidget {

  @override
  State<HandListView> createState() => _HandListViewState();
}

class _HandListViewState extends State<HandListView> {
  
  bool isFirstRender = true;

  @override
  Widget build(BuildContext context) {

    DecksController globalState = DecksController();

    final deckAssets _assets = globalState.playerDeckSelection.value;
    List<UnitCard> cardsInHand = globalState.handCards;
    List<UnitCard> deckList;
    String deckPath;
    

    switch (_assets){
      
      case deckAssets.monsters :
      deckList = globalState.monstersUnitsSelected; 
      deckPath = kMonUnitsAD;
      break;

      case deckAssets.nilfgaard:
      deckList = globalState.nilfggardUnitsSelected;
      deckPath = kNilfUnitsAD;
      break;

      case deckAssets.northernRealms:
      deckList = globalState.NorthernRealmsUnitsSelected;
      deckPath = kNorthUnitsAD;
      break;

      case deckAssets.scoiatael:
      deckList = globalState.ScoiataelUnitsSelected;
      deckPath = kScoiaUnitsAD;
      break;
      
    }

    // Our hand, a Random math Instance & a variable to save the result
    final Random _random = Random();
    int randomPick;

    // This will populate our hand with 10 random cards from the selected deck
    if (isFirstRender){
    for (int i = 0; i < 10; i++) {
      randomPick = _random.nextInt(deckList.length);


      while (cardsInHand.contains(deckList[randomPick])) {
        randomPick = _random.nextInt(deckList.length);
      }
      cardsInHand.add(deckList[randomPick]);
    }
    setState(() {
      isFirstRender = false;
    });
    }

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8.0),
      itemCount: cardsInHand.length,
      itemBuilder: (ctx, i) {
        //TODO fix data models so that this if clause is not required
        String pathset;
        if(cardsInHand[i].id <= 20) {
           pathset = kSpecialCardsAD;
        } else if (cardsInHand[i].id <= 30){
          pathset = kNeutralUnitsAD;
        } else {
          pathset = deckPath;
        }
        return RollListCardItem(
          deckAssetsPath: pathset, 
          cardName: cardsInHand[i].cardName, 
          );
      },
    );
  }
}

