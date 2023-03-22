// ignore_for_file: file_names, use_key_in_widget_constructors, list_remove_unrelated_type

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/controllers/decks_controller.dart';
import 'package:gwent/widgets/GamePlay/hand_list_view.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'dart:math';

class RollListCardItem extends StatelessWidget {
  final String deckAssetsPath;
  final String cardName;

  RollListCardItem({
      required this.deckAssetsPath,
      required this.cardName,
      });

  @override
  Widget build(BuildContext context) {

    DecksController globalState = DecksController();
    
    final Random _random = Random();
    int _randomPick;
    int indexIndicator;

    List<UnitCard> cardsInHand = globalState.handCards;

    final deckAssets _assets = globalState.playerDeckSelection.value;
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

    return GridTile(
      child: InkWell(
        onTap: () {
          if(globalState.cardsRerolled.value < 2){
          _randomPick = _random.nextInt(deckList.length);
          
          while(cardsInHand.contains(deckList[_randomPick],)){
          _randomPick = _random.nextInt(deckList.length);
          }

          indexIndicator = cardsInHand.indexWhere((element) => element.cardName == cardName);
          cardsInHand.remove(cardsInHand[indexIndicator]);
          cardsInHand.insert(indexIndicator, deckList[_randomPick]);
   
          globalState.cardsRerolled++;
          globalState.update();
          } else {
            return;
          }
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
