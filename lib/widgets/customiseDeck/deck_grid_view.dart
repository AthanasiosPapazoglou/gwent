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
  
  final GridViewRender whichToRender;

  DeckGridView({required this.whichToRender});

  @override
  Widget build(BuildContext context) {

    final customDecks = Provider.of<CustomDecks>(context);
    final _assets = customDecks.playerDeckSelection;
    List<UnitCard> renderList;
    List<UnitCard> compareList;
    String assetDirectory;

   
    switch (_assets){
      
      case deckAssets.monsters : 
      renderList = (whichToRender == GridViewRender.unselected) ? customDecks.monstersUnitsUnselected : customDecks.monstersUnitsSelected;
      compareList = (whichToRender == GridViewRender.unselected) ? customDecks.monstersUnitsSelected : customDecks.monstersUnitsUnselected;
      assetDirectory = kMonUnitsAD;
      break;

      case deckAssets.nilfgaard:
      renderList = (whichToRender == GridViewRender.unselected) ? customDecks.nilfggardUnitsUnselected : customDecks.nilfggardUnitsSelected;
      compareList = (whichToRender == GridViewRender.unselected) ? customDecks.nilfggardUnitsSelected : customDecks.nilfggardUnitsUnselected;
      assetDirectory = kNilfUnitsAD;
      break;

      case deckAssets.northernRealms:
      renderList = (whichToRender == GridViewRender.unselected) ? customDecks.NorthernRealmsUnitsUnselected : customDecks.NorthernRealmsUnitsSelected;
      compareList = (whichToRender == GridViewRender.unselected) ? customDecks.NorthernRealmsUnitsSelected : customDecks.NorthernRealmsUnitsUnselected;
      assetDirectory = kNorthUnitsAD;
      break;

      case deckAssets.scoiatael:
      renderList = (whichToRender == GridViewRender.unselected) ? customDecks.ScoiataelUnitsUnselected : customDecks.ScoiataelUnitsSelected;
      compareList = (whichToRender == GridViewRender.unselected) ? customDecks.ScoiataelUnitsSelected : customDecks.ScoiataelUnitsUnselected;
      assetDirectory = kScoiaUnitsAD;
      break;
      
    }

    return GridView.builder(
      itemCount: renderList.length,
      itemBuilder: (ctx, i) {
        if (renderList[i].id <= 20) {
          return GridCardItem(
            unitCard: renderList[i],
            assetDirectory: kSpecialCardsAD,
            listToRender: renderList,
            listToCompare: compareList,
            whatRenders: whichToRender,
          );
        } else {
          return GridCardItem(
            unitCard: renderList[i],
            assetDirectory: (renderList[i].id <= 30)
                ? kNeutralUnitsAD
                : assetDirectory,
            listToRender: renderList,
            listToCompare: compareList,
            whatRenders: whichToRender,
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
