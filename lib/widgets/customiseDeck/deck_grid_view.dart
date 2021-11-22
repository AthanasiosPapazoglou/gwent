// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:provider/provider.dart';

class DeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';
  
  final gridViewRender whichToRender;

  DeckGridView({required this.whichToRender});

  @override
  Widget build(BuildContext context) {

    final customDecks = Provider.of<CustomDecks>(context);
    final _assets = customDecks.playerDeckSelection;
    final List<UnitCard> renderList;
    final List<UnitCard> compareList;
    final String assetDirectory;

   
    switch (_assets){
      
      case deckAssets.monsters : 
      renderList = (whichToRender == gridViewRender.unselected) ? customDecks.monstersUnitsUnselected : customDecks.monstersUnitsSelected;
      compareList = (whichToRender == gridViewRender.unselected) ? customDecks.monstersUnitsSelected : customDecks.monstersUnitsUnselected;
      assetDirectory = kMonUnitsAD;
      break;

      case deckAssets.nilfgaard:
      renderList = (whichToRender == gridViewRender.unselected) ? customDecks.nilfggardUnitsUnselected : customDecks.nilfggardUnitsSelected;
      compareList = (whichToRender == gridViewRender.unselected) ? customDecks.nilfggardUnitsSelected : customDecks.nilfggardUnitsUnselected;
      assetDirectory = kNilfUnitsAD;
      break;

      case deckAssets.northernRealms:
      renderList = (whichToRender == gridViewRender.unselected) ? customDecks.unselectedNorthernRealmsUnits : customDecks.selectedNorthernRealmsUnits;
      compareList = (whichToRender == gridViewRender.unselected) ? customDecks.selectedNorthernRealmsUnits : customDecks.unselectedNorthernRealmsUnits;
      assetDirectory = kNorthUnitsAD;
      break;

      case deckAssets.scoiatael:
      renderList = (whichToRender == gridViewRender.unselected) ? customDecks.unselectedScoiataelUnits : customDecks.selectedNorthernRealmsUnits;
      compareList = (whichToRender == gridViewRender.unselected) ? customDecks.selectedNorthernRealmsUnits : customDecks.unselectedScoiataelUnits;
      assetDirectory = kScoiaUnitsAD;
      break;
      
    }

    return GridView.builder(
      itemCount: renderList.length,
      itemBuilder: (ctx, i) {
        if (renderList[i].id <= 20) {
          return GridCardItem(
            unitCard: renderList[i],
            cardName: renderList[i].cardName,
            assetDirectory: kSpecialCardsAD,
            listToRender: renderList,
            listToCompare: compareList,
          );
        } else {
          return GridCardItem(
            unitCard: renderList[i],
            cardName: renderList[i].cardName,
            assetDirectory: (renderList[i].id <= 30)
                ? kNeutralUnitsAD
                : assetDirectory,
            listToRender: renderList,
            listToCompare: compareList,
          );
        }
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 4,
      ),
    );
  }
}
