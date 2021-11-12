// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:provider/provider.dart';

class DeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';

  final String assetDirectory;
  final int renderIndex;
  final int compareIndex;

  DeckGridView(
      {required this.assetDirectory,
      required this.renderIndex,
      required this.compareIndex});

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    final List<List<UnitCard>> customDeckDB = [
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
      //padding: const EdgeInsets.all(8),
      itemCount: customDeckDB[renderIndex]
          .length, //customDecks.monstersUnitsUnselected.length,
      itemBuilder: (ctx, i) {
        return GridCardItem(
          unitCard: customDeckDB[renderIndex]
              [i], //customDecks.monstersUnitsUnselected[i],
          cardName: customDeckDB[renderIndex][i]
              .cardName, //customDecks.monstersUnitsUnselected[i].cardName,
          assetDirectory: assetDirectory,
          listToRender: customDeckDB[
              renderIndex], //customDecks.monstersUnitsUnselected,
          listToCompare: customDeckDB[
              compareIndex], //customDecks.monstersUnitsSelected,
        ); //path συγκεκριμενου Units Deck
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
