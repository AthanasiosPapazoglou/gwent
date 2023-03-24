import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/controllers/glogal_state_controller.dart';
import 'package:provider/provider.dart';
import 'package:gwent/App-Utilities/enums.dart';

//TODO Challenge: See if eliminating prop drilling or keeping it is ideal for rollCardItem (λογικα ειναι)

class GridCardItem extends StatelessWidget {
  final UnitCard unitCard;
  final String assetDirectory; 
  final RxList<UnitCard> listToRender;
  final RxList<UnitCard> listToCompare;
  final GridViewRender whatRenders; 

  GridCardItem({
    required this.unitCard,
    required this.assetDirectory, 
    required this.listToRender,
    required this.listToCompare,
    required this.whatRenders
  });
  
  GlobalStateController globalState = Get.find();

  @override
  Widget build(BuildContext context) {

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
            globalState.reconfigureLists(unitCard, listToRender);
            listToCompare.remove(unitCard);
          }
          globalState.update();
          break;
          
          case GridViewRender.selected:

          if(listToRender.contains(unitCard)){
            globalState.reconfigureLists(unitCard, listToCompare);
            listToRender.remove(unitCard);
          }
          else{
            listToRender.add(unitCard);
            listToCompare.remove(unitCard);
          }
          globalState.update();
          break;
        }
      },
        child: Image(
          image: AssetImage('$assetDirectory${unitCard.cardName}'),
        ),
      ),
    );
  }
}
