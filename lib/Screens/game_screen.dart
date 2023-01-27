// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/widgets/GamePlay/bRow_list_view.dart';
import 'package:gwent/widgets/GamePlay/hand_list_view.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Providers/customDecks.dart';

import '../App-Utilities/constants.dart';

class Game extends StatefulWidget {
  static const routeName = '/game-screen';

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
      landscapeMode();
    }

    @override
    dispose() {
      portraitMode();
      super.dispose();
    }

    final customDecks = Provider.of<CustomDecks>(context);
    final size = MediaQuery.of(context).size;
    String playerLeaderName;
    String playerLeaderBaseDirectory;

    switch (customDecks.playerDeckSelection) {
      case deckAssets.monsters:
        playerLeaderName = customDecks.selectedMonstersLeader;
        playerLeaderBaseDirectory = kMonLeadersAD;
        break;

      case deckAssets.nilfgaard:
        playerLeaderName = customDecks.selectedNilfggardLeader;
        playerLeaderBaseDirectory = kNilfLeadersAD;
        break;

      case deckAssets.northernRealms:
        playerLeaderName = customDecks.selectedNorthernRealmsLeader;
        playerLeaderBaseDirectory = kNorthLeadersAD;
        break;

      case deckAssets.scoiatael:
        playerLeaderName = customDecks.selectedScoiataelLeader;
        playerLeaderBaseDirectory = kScoiaLeadersAD;
        break;
    }

    if (customDecks.gameHasBegun) {
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
              Positioned(
                bottom: 0,
                left: 220,
                child: Align(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ListView.builder(
                      itemCount: customDecks.handCards.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String _assetDirectory;

                        if (customDecks.handCards[index].id <= 20) {
                          _assetDirectory = kSpecialCardsAD;
                        } else if (customDecks.handCards[index].id <= 30) {
                          _assetDirectory = kNeutralUnitsAD;
                        } else {
                          switch (customDecks.playerDeckSelection) {
                            case deckAssets.monsters:
                              _assetDirectory = kMonUnitsAD;
                              break;

                            case deckAssets.nilfgaard:
                              _assetDirectory = kNilfUnitsAD;
                              break;

                            case deckAssets.northernRealms:
                              _assetDirectory = kNorthUnitsAD;
                              break;

                            case deckAssets.scoiatael:
                              _assetDirectory = kScoiaUnitsAD;
                              break;
                          }
                        }

                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: SizedBox(
                            width: 36,
                            height: 64,
                            child: Image.asset(
                                '$_assetDirectory${customDecks.handCards[index].cardName}'),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 18,
                left: 50,
                child: SizedBox(
                  child: Image.asset(
                      '$playerLeaderBaseDirectory$playerLeaderName'),
                  width: 45,
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
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
                      style: TextStyle(
                          color: Colors.orange.shade100, fontSize: 32),
                    ),
                    Text(
                      '${customDecks.cardsRerolled}/2',
                      style: TextStyle(
                          color: customDecks.cardsRerolled < 2
                              ? Colors.green
                              : Colors.red,
                          fontSize: 32),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40,
                left: size.width * 0.45,
                child: GestureDetector(
                  onTap: () {
                    customDecks.cardsRerolled = 0;
                    customDecks.gameHasBegun = true;
                    customDecks.refreshLists();
                  },
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
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
