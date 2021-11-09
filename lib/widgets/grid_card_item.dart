import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';

class GridCardItem extends StatelessWidget {
  final String cardName;
  final String assetDirectory;

  GridCardItem({
    required this.cardName,
    required this.assetDirectory
    });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {},
        child: Image(
          image: AssetImage('$assetDirectory$cardName'),
        ),
      ),
    );
  }
}
