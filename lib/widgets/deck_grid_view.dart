// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';

class DeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemBuilder: (ctx, i){
        return GridCardItem(cardName: monstersUnits[i].cardName,);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}