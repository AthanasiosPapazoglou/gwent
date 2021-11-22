import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/Card-Models/leader_model.dart';
import 'package:provider/provider.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/widgets/customiseDeck/leaders_row_item.dart';

class LeaderSelection extends StatelessWidget {

  static const routeName = '/select-leader-screen';

  @override
  Widget build(BuildContext context) {
    landscapeMode();
    final customDecks = Provider.of<CustomDecks>(context);
    deckAssets _assets = customDecks.playerDeckSelection;
    List <LeaderCard> deckLeaders;
    String leadersPath;

    switch (_assets) {

      case deckAssets.monsters:
      deckLeaders = customDecks.pMonstersLeaders;
      leadersPath = kMonLeadersAD;
      break;

      case deckAssets.nilfgaard:
      deckLeaders = customDecks.pNilfgaardLeaders;
      leadersPath = kNilfLeadersAD;
      break;

      case deckAssets.northernRealms:
      deckLeaders = customDecks.pNorthernRealmsLeaders;
      leadersPath = kNorthLeadersAD;
      break;

      case deckAssets.scoiatael:
      deckLeaders = customDecks.pScoiataelLeaders;
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