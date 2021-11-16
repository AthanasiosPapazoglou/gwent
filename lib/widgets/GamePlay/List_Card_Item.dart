// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListCardItem extends StatelessWidget {
  final String deckAssetsPath;
  final String cardName;

  ListCardItem({required this.deckAssetsPath, required this.cardName});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.265,
          image: AssetImage('$deckAssetsPath$cardName'),
        ),
      ),
    );
  }
}
