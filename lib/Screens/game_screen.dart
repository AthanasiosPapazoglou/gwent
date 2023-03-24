// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/controllers/glogal_state_controller.dart';
import 'package:gwent/widgets/GamePlay/hand_list_view.dart';
import 'package:provider/provider.dart';

import '../App-Utilities/constants.dart';

class Game extends StatefulWidget {
  static const routeName = '/game-screen';

  @override
  State<Game> createState() => _GameState();
}

GlobalStateController globalState = Get.find();

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

    final size = MediaQuery.of(context).size;

    String playerLeaderName;
    String playerLeaderBaseDirectory;

    String playerDeckBacksideDirectory;
    String opponentDeckBacksideDirectory;

    switch (globalState.playerDeckSelection.value) {
      case deckAssets.monsters:
        playerLeaderName = globalState.selectedMonstersLeader;
        playerLeaderBaseDirectory = kMonLeadersAD;
        playerDeckBacksideDirectory = kMonBackAD;
        opponentDeckBacksideDirectory = kMonBackAD;
        break;

      case deckAssets.nilfgaard:
        playerLeaderName = globalState.selectedNilfggardLeader;
        playerLeaderBaseDirectory = kNilfLeadersAD;
        playerDeckBacksideDirectory = kNilfBackAD;
        opponentDeckBacksideDirectory = kNilfBackAD;
        break;

      case deckAssets.northernRealms:
        playerLeaderName = globalState.selectedNorthernRealmsLeader;
        playerLeaderBaseDirectory = kNorthLeadersAD;
        playerDeckBacksideDirectory = kNorthBackAD;
        opponentDeckBacksideDirectory = kNorthBackAD;
        break;

      case deckAssets.scoiatael:
        playerLeaderName = globalState.selectedScoiataelLeader;
        playerLeaderBaseDirectory = kScoiaLeadersAD;
        playerDeckBacksideDirectory = kScoiaBackAD;
        opponentDeckBacksideDirectory = kScoiaBackAD;
        break;
    }

    if (globalState.gameHasBegun.isTrue) {
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
              //!Player's Hand
              Positioned(
                bottom: 0,
                left: 220,
                child: Align(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ListView.builder(
                      itemCount: globalState.handCards.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String _assetDirectory;

                        if (globalState.handCards[index].id <= 20) {
                          _assetDirectory = kSpecialCardsAD;
                        } else if (globalState.handCards[index].id <= 30) {
                          _assetDirectory = kNeutralUnitsAD;
                        } else {
                          switch (globalState.playerDeckSelection.value) {
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
                                '$_assetDirectory${globalState.handCards[index].cardName}'),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              //!Player Leader
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
              //!Player Deck
              Positioned(
                right: 60,
                bottom: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 45,
                      height: 80,
                      child: Image.asset(playerDeckBacksideDirectory),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          '13',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //!Enemy Deck
              Positioned(
                top: 90,
                right: 60,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(opponentDeckBacksideDirectory),
                      width: 45,
                      height: 80,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          '13',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //!Enemy Leader
              Positioned(
                top: 12,
                left: 51,
                child: SizedBox(
                  child: Image.asset(
                      '$playerLeaderBaseDirectory$playerLeaderName'),
                  width: 45,
                  height: 80,
                ),
              ),
              //!Player Row Counters
              Positioned(
                left: 180,
                bottom: 22,
                child: CounterBubble(),
              ),
              Positioned(
                left: 180,
                bottom: 88,
                child: CounterBubble(),
              ),
              Positioned(
                left: 180,
                bottom: 151,
                child: CounterBubble(),
              ),
              //!Enemies Row Counters
              Positioned(
                left: 180,
                top: 22,
                child: CounterBubble(),
              ),
              Positioned(
                left: 180,
                top: 88,
                child: CounterBubble(),
              ),
              Positioned(
                left: 180,
                top: 151,
                child: CounterBubble(),
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
                      '${globalState.cardsRerolled}/2',
                      style: TextStyle(
                          color: globalState.cardsRerolled < 2
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
                    globalState.cardsRerolled = 0.obs;
                    globalState.gameHasBegun = true.obs;
                    globalState.update();
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

class CounterBubble extends StatelessWidget {
  const CounterBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          '0',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
