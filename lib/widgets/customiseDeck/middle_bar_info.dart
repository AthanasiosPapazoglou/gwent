// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'leader_card_widget.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/widgets/customiseDeck/cancel_save.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/App-Utilities/enums.dart';

class MiddleBarInfo extends StatelessWidget {
  // final String leaderCardName;
  // final String leaderSetDirectory;
  // final String deckPath;
  // final int renderIndex;

  // MiddleBarInfo(
  //     {required this.leaderCardName,
  //     required this.leaderSetDirectory,
  //     required this.deckPath,
  //     required this.renderIndex});

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    final assets = customDecks.playerDeckSelection;
    final List<UnitCard> statList;
    final String leadersPath;

    switch (assets){
      
      case deckAssets.monsters : 
      statList = customDecks.monstersUnitsSelected;
      leadersPath = kMonLeadersAD;
      break;

      case deckAssets.nilfgaard:
      statList = customDecks.nilfggardUnitsSelected;
      leadersPath = kNilfLeadersAD;
      break;

      case deckAssets.northernRealms:
      statList = customDecks.selectedNorthernRealmsUnits;
      leadersPath = kNorthLeadersAD;
      break;

      case deckAssets.scoiatael:
      statList = customDecks.selectedNorthernRealmsUnits;
      leadersPath = kScoiaUnitsAD;
      break;

    }
    
    int power = 0;
    int units = 0;
    int heroes = 0;
    int special = 0;
    for (int i = 0; i < statList.length; i++) {
      power = power + statList[i].strength;
      if (statList[i].isHero) {
        heroes++;
      }
      (statList[i].id <= 20) ? special++ : units++;
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Column(
          children: [
            LeaderCardWidget(
              cardName: monstersLeaders[0].cardName,
              assetDirectory: kMonLeadersAD,
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              'Total Cards in Deck',
              style: TextStyle(
                fontSize: 10,
                color: kInfoTextColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              statList.length.toString(),
              style: TextStyle(
                fontSize: 12,
                color: kInfoNumColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              'Number of Unit Cards',
              style: TextStyle(
                fontSize: 10,
                color: kInfoTextColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              '$units/22',
              style: TextStyle(
                fontSize: 12,
                color: (units < 22) ? Colors.red : Colors.green,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              'Special Cards',
              style: TextStyle(
                fontSize: 10,
                color: kInfoTextColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              '$special/10',
              style: TextStyle(
                fontSize: 12,
                color: (special <= 10) ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              'Total Unit Card Strength',
              style: TextStyle(
                fontSize: 10,
                color: kInfoTextColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              power.toString(),
              style: TextStyle(
                fontSize: 12,
                color: kInfoNumColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              'Hero Cards',
              style: TextStyle(
                fontSize: 10,
                color: kInfoTextColor,
              ),
            ),
            SizedBox(height: kDistanceOnInfo),
            Text(
              heroes.toString(),
              style: TextStyle(
                fontSize: 12,
                color: kInfoNumColor,
              ),
            ),
            SizedBox(height: 6),
            MidBarNav()
          ],
        ),
      ),
    );
  }
}
