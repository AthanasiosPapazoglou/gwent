// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListCardItem extends StatelessWidget {
  final String deckAssetsPath;
  final String cardName;

  ListCardItem({required this.deckAssetsPath, required this.cardName});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image(
        image: AssetImage('$deckAssetsPath$cardName'),
      ),
    );
  }
}
