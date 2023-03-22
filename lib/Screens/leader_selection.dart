import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/Card-Models/leader_model.dart';
import 'package:gwent/controllers/decks_controller.dart';
import 'package:provider/provider.dart';
import 'package:gwent/widgets/customiseDeck/leaders_row_item.dart';

class LeaderSelection extends StatelessWidget {

  static const routeName = '/select-leader-screen';

  @override
  Widget build(BuildContext context) {
    landscapeMode();
    DecksController globalState = DecksController();
    deckAssets _assets = globalState.playerDeckSelection.value;
    List <LeaderCard> deckLeaders;
    String leadersPath;

    switch (_assets) {

      case deckAssets.monsters:
      deckLeaders = globalState.pMonstersLeaders;
      leadersPath = kMonLeadersAD;
      break;

      case deckAssets.nilfgaard:
      deckLeaders = globalState.pNilfgaardLeaders;
      leadersPath = kNilfLeadersAD;
      break;

      case deckAssets.northernRealms:
      deckLeaders = globalState.pNorthernRealmsLeaders;
      leadersPath = kNorthLeadersAD;
      break;

      case deckAssets.scoiatael:
      deckLeaders = globalState.pScoiataelLeaders;
      leadersPath = kScoiaLeadersAD;
      break;

    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Row(
          children: [
            LeadersRowItem(leaderName: deckLeaders[0].cardName, leadersPath: leadersPath, leftPadding: 8,),
            LeadersRowItem(leaderName: deckLeaders[1].cardName, leadersPath: leadersPath),
            LeadersRowItem(leaderName: deckLeaders[2].cardName, leadersPath: leadersPath),
            LeadersRowItem(leaderName: deckLeaders[3].cardName, leadersPath: leadersPath, rightPadding: 8,),
          ],
        ),
    
      ),
    );
  }
}