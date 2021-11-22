// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/widgets/GamePlay/bRow_list_view.dart';
import 'package:gwent/widgets/GamePlay/hand_list_view.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:provider/provider.dart';

class Game extends StatelessWidget {
  static const routeName = '/game-screen';

  //TODO diminish prop drilling

  @override
  Widget build(BuildContext context) {
    landscapeMode();
    final customDecks = Provider.of<CustomDecks>(context);
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('GameAssets/GameTable/GwentTable.jpg'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            HandListView(),
            Positioned(
              top: 50,
              left: size.width * 0.35,
              child: Row(
                children: [
                  Text(
                    'Reroll Cards: ',
                    style: TextStyle(color: Colors.orange.shade100, fontSize: 32),
                  ),
                  Text(
                    '${customDecks.cardsRerolled}/2',
                    style: TextStyle(color: Colors.green, fontSize: 32),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: size.width * 0.45,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  border: Border.all(color: Colors.red.shade600),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                width: size.width * 0.1,
                height: size.height * 0.1,
                child: Center(
                  child: Text(
                    'PLAY',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red.shade600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
