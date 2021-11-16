import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:provider/provider.dart';

class GridCardItem extends StatelessWidget {
  final UnitCard unitCard;
  final String cardName;
  final String assetDirectory; //path συγκεκριμενου Units Deck
  final List listToRender;
  final List listToCompare;

  GridCardItem({
    required this.unitCard,
    required this.cardName,
    required this.assetDirectory, //path συγκεκριμενου Units Deck
    required this.listToRender,
    required this.listToCompare,
  });

  @override
  Widget build(BuildContext context) {
    final refresh = Provider.of<CustomDecks>(context);
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
          refresh.refreshLists();
        },
        child: Image(
          image: AssetImage('$assetDirectory$cardName'),
        ),
      ),
    );
  }
}
