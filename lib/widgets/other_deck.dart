// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:provider/provider.dart';

class OtherDeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';

  final String assetDirectory;

  OtherDeckGridView({ required this.assetDirectory});

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    return GridView.builder(
      itemCount: customDecks.monstersUnitsSelected.length,
      itemBuilder: (ctx, i) {
        return GridCardItem(
          unitCard: customDecks.monstersUnitsSelected[i],
          cardName: customDecks.monstersUnitsSelected[i].cardName,
          assetDirectory: assetDirectory,
          listToRender: customDecks.monstersUnitsSelected,
          listToCompare: customDecks.monstersUnitsUnselected,
        );
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

