import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/customDecks.dart';

class GridCardItem extends StatelessWidget {
  final String cardName;
  final String assetDirectory; //path συγκεκριμενου Units Deck
  final List listToRender;
  final List listToCompare;

  GridCardItem({
    required this.cardName,
    required this.assetDirectory, //path συγκεκριμενου Units Deck
    required this.listToRender,
    required this.listToCompare,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          if(listToRender.contains(cardName)){
            
          }
        },
        child: Image(
          image: AssetImage('$assetDirectory$cardName'),
        ),
      ),
    );
  }
}
