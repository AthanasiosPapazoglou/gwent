// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'leader_card_widget.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/widgets/cancel_save.dart';

class MiddleBarInfo extends StatelessWidget {
  final String leaderCardName;
  final String leaderSetDirectory;

  MiddleBarInfo({
    required this.leaderCardName,
    required this.leaderSetDirectory,
  });

  @override
  Widget build(BuildContext context) {
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
              '12',
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
              '12/22',
              style: TextStyle(
                fontSize: 12,
                color: kInfoNumColor,
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
              '62',
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
              '3',
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
