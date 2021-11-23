// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/leader_model.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Providers/customDecks.dart';

class LeadersRowItem extends StatelessWidget {
  String leaderName;
  String leadersPath;
  double leftPadding;
  double rightPadding;

  LeadersRowItem({
    required this.leaderName,
    required this.leadersPath,
    this.leftPadding = 0.0,
    this.rightPadding = 0.0
  });

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    DeckAssets _assets = customDecks.playerDeckSelection;

    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          switch (_assets) {
            case DeckAssets.monsters:
              customDecks.selectedMonstersLeader = leaderName;
              break;

            case DeckAssets.nilfgaard:
              customDecks.selectedNilfggardLeader = leaderName;
              break;

            case DeckAssets.northernRealms:
              customDecks.selectedNorthernRealmsLeader = leaderName;
              break;

            case DeckAssets.scoiatael:
              customDecks.selectedScoiataelLeader = leaderName;
              break;
          }
          customDecks.refreshLists();
          Navigator.pop(context);
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('$leadersPath$leaderName'),
          ),
        ),
      ),
    );
  }
}
