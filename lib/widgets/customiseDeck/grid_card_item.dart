import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:provider/provider.dart';

//TODO Challenge: See if eliminating prop drilling or keeping it is ideal for rollCardItem (λογικα ειναι)

class GridCardItem extends StatelessWidget {
  final UnitCard unitCard;
  final String assetDirectory; 
  final List listToRender;
  final List listToCompare;

  GridCardItem({
    required this.unitCard,
    required this.assetDirectory, 
    required this.listToRender,
    required this.listToCompare,
  });

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    

    return GridTile(
      child: GestureDetector(
        onTap: () {
          if(listToRender.contains(unitCard)){
            listToCompare.add(unitCard);
            listToRender.remove(unitCard);
          }
          else{
            listToRender.add(unitCard);
            listToCompare.remove(unitCard);
          }
          customDecks.refreshLists();
        },
        child: Image(
          image: AssetImage('$assetDirectory${unitCard.cardName}'),
        ),
      ),
    );
  }
}
