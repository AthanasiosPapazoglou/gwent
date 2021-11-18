// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gwent/widgets/GamePlay/hand_list_view.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Providers/customDecks.dart';

class RollListCardItem extends StatelessWidget {
  final String deckAssetsPath;
  final String cardName;
  final int renderIndex;

  RollListCardItem({
      required this.deckAssetsPath,
      required this.cardName,
      required this.renderIndex
      });

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    return GridTile(
      child: InkWell(
        onTap: () {
          
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.265,
            image: AssetImage('$deckAssetsPath$cardName'),
          ),
        ),
      ),
    );
  }
}
