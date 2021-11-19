// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:provider/provider.dart';

class DeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';

  @override
  Widget build(BuildContext context) {

    final customDecks = Provider.of<CustomDecks>(context);
    
    final List<List<UnitCard>>customDeckDB = [
      customDecks.monstersUnitsUnselected,
      customDecks.monstersUnitsSelected,
      customDecks.nilfggardUnitsUnselected,
      customDecks.nilfggardUnitsSelected,
      customDecks.unselectedNorthernRealmsUnits,
      customDecks.selectedNorthernRealmsUnits,
      customDecks.unselectedScoiataelUnits,
      customDecks.selectedScoiataelUnits
    ];
    return GridView.builder(
      itemCount: customDeckDB[renderIndex].length,
      itemBuilder: (ctx, i) {
        if (customDeckDB[renderIndex][i].id <= 20) {
          return GridCardItem(
            unitCard: customDeckDB[renderIndex][i],
            cardName: customDeckDB[renderIndex][i].cardName,
            assetDirectory: kSpecialCardsAD,
            listToRender: customDeckDB[renderIndex],
            listToCompare: customDeckDB[compareIndex],
          );
        } else {
          return GridCardItem(
            unitCard: customDeckDB[renderIndex][i],
            cardName: customDeckDB[renderIndex][i].cardName,
            assetDirectory: (customDeckDB[renderIndex][i].id <= 30)
                ? kNeutralUnitsAD
                : assetDirectory,
            listToRender: customDeckDB[renderIndex],
            listToCompare: customDeckDB[compareIndex],
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
