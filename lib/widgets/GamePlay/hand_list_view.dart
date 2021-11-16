// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/GamePlay/List_Card_Item.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class HandListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // Providing
    final customDecks = Provider.of<CustomDecks>(context);
    
    // Our hand, a Random math Instance & a variable to save the result
    List <UnitCard> handCards =[];
    final Random _random = Random();
    int randomPick;

    // This will populate our hand with 10 random cards from the selected deck
    for(int i = 0; i < 10; i++){
      randomPick = _random.nextInt(customDecks.monstersUnitsSelected.length);
      
      while(handCards.contains(customDecks.monstersUnitsSelected[randomPick])){
        randomPick = _random.nextInt(customDecks.monstersUnitsSelected.length);
      }
      handCards.add(customDecks.monstersUnitsSelected[randomPick]);
    }

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8.0),
      itemCount: handCards.length,
      itemBuilder: (ctx, i) {
        return ListCardItem(deckAssetsPath: 'GameAssets/Decks/Monsters/', cardName: handCards[i].cardName);
      }
    );
  }
}
