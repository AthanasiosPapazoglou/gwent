import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:provider/provider.dart';
import 'package:gwent/App-Utilities/enums.dart';

//TODO Challenge: See if eliminating prop drilling or keeping it is ideal for rollCardItem (λογικα ειναι)

class GridCardItem extends StatelessWidget {
  final UnitCard unitCard;
  final String assetDirectory; 
  final List<UnitCard> listToRender;
  final List<UnitCard> listToCompare;
  final GridViewRender whatRenders; 

  GridCardItem({
    required this.unitCard,
    required this.assetDirectory, 
    required this.listToRender,
    required this.listToCompare,
    required this.whatRenders
  });

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    

    return GridTile(
      child: GestureDetector(
        onTap: () {

          switch (whatRenders){
          
          case GridViewRender.unselected:
          
          if(listToRender.contains(unitCard)){
            listToCompare.add(unitCard);
            listToRender.remove(unitCard);
          }
          else{
            customDecks.reconfigureLists(unitCard, listToRender);
            listToCompare.remove(unitCard);
          }
          customDecks.refreshLists();
          break;
          
          case GridViewRender.selected:

          if(listToRender.contains(unitCard)){
            customDecks.reconfigureLists(unitCard, listToCompare);
            listToRender.remove(unitCard);
          }
          else{
            listToRender.add(unitCard);
            listToCompare.remove(unitCard);
          }
          customDecks.refreshLists();
          break;
        }
      },
        child: Image(
          image: AssetImage('$assetDirectory${unitCard.imageFilename}'),
        ),
      ),
    );
  }
}
