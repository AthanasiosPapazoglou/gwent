// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'grid_card_item.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';

class DeckGridView extends StatelessWidget {
  static const routeName = '/deck-grid-view';
  
  final List listToRender;
  final String assetDirectory;

  DeckGridView({
    required this.listToRender,
    required this.assetDirectory
    });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //padding: const EdgeInsets.all(8),
      itemCount: listToRender.length,
      itemBuilder: (ctx, i){
        return GridCardItem(cardName: listToRender[i].cardName, assetDirectory: assetDirectory,);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2/3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 4,
      ),
    );
  }
}