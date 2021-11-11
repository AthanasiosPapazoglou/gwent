// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/customDecks.dart';
import 'leader_card_widget.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/customDecks.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/widgets/cancel_save.dart';
import 'package:provider/provider.dart';

class MiddleBarInfo extends StatelessWidget {
  final String leaderCardName;
  final String leaderSetDirectory;

  MiddleBarInfo({
    required this.leaderCardName,
    required this.leaderSetDirectory,
  });

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    int power = 0;
    int heroes = 0;
    for(int i=0; i < customDecks.monstersUnitsSelected.length; i++){
      power = power + customDecks.monstersUnitsSelected[i].strength;
      if(customDecks.monstersUnitsSelected[i].isHero){
        heroes++;
      }
    }
    return Padding(
      padding: const EdgeInsets.all(26.0),
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
              customDecks.monstersUnitsSelected.length.toString(),
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
              '${customDecks.monstersUnitsSelected.length.toString()}/22',
              style: TextStyle(
                  fontSize: 12,
                  color: (customDecks.monstersUnitsSelected.length < 22)
                      ? Colors.red
                      : Colors.green),
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
              '0/10',
              style: TextStyle(
                fontSize: 12,
                color: kInfoNumColor,
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
            CancelorSaveRow()
          ],
        ),
      ),
    );
  }
}
