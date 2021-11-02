import 'package:flutter/material.dart';
import 'package:gwent/Card-Models/leader_model.dart';
import 'package:gwent/Card-Models/special_model.dart';
import 'package:gwent/Card-Models/unit_model.dart';

class GridCardItem extends StatelessWidget {
  final String cardName;

  GridCardItem({required this.cardName});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {},
        child: Image(
          image: AssetImage('GameAssets/Decks/Monsters/$cardName'),
        ),
      ),
    );
  }
}
