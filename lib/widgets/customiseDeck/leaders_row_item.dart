// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/leader_model.dart';
import 'package:gwent/controllers/decks_controller.dart';
import 'package:provider/provider.dart';

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
    DecksController globalState = DecksController();
    deckAssets _assets = globalState.playerDeckSelection.value;

    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          switch (_assets) {
            case deckAssets.monsters:
              globalState.selectedMonstersLeader = leaderName;
              break;

            case deckAssets.nilfgaard:
              globalState.selectedNilfggardLeader = leaderName;
              break;

            case deckAssets.northernRealms:
              globalState.selectedNorthernRealmsLeader = leaderName;
              break;

            case deckAssets.scoiatael:
              globalState.selectedScoiataelLeader = leaderName;
              break;
          }
          globalState.update();
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
