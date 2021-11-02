// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';

class DeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //padding: const EdgeInsets.all(8),
      itemCount: monstersUnits.length,
      itemBuilder: (ctx, i){
        print(monstersUnits[i].cardName);
        return GridCardItem(cardName: monstersUnits[i].cardName);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2/3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
    );
  }
}