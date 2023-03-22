import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/controllers/decks_controller.dart';
import 'package:gwent/widgets/customiseDeck/deck_grid_view.dart';
import 'package:gwent/widgets/customiseDeck/filter_row.dart';
import 'package:gwent/widgets/customiseDeck/leader_card_widget.dart';
import 'package:gwent/widgets/customiseDeck/middle_bar_info.dart';
import 'package:provider/provider.dart';

class CustomiseDeck extends StatefulWidget {
  static const routeName = '/customise-decks-screen';

  @override
  _CustomiseDeckState createState() => _CustomiseDeckState();
}

class _CustomiseDeckState extends State<CustomiseDeck> {
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

  late String backgroundDeckCover;

  @override
  Widget build(BuildContext context) {  
    
    DecksController globalState = DecksController();
    
    switch (globalState.playerDeckSelection.value) {
      case deckAssets.monsters:
        backgroundDeckCover = 'GameAssets/Back/Monsters back.png';
        break;

      case deckAssets.nilfgaard:
        backgroundDeckCover = 'GameAssets/Back/Nilfgaardian Empire back.png';
        break;

      case deckAssets.northernRealms:
        backgroundDeckCover = 'GameAssets/Back/Northern Realms back.png';
        break;

      case deckAssets.scoiatael:
        backgroundDeckCover = 'GameAssets/Back/Scoia\'tael back.png';
        break;
    }

    return Scaffold(
      body: Stack(
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: Stack(
              children: [Container(
                width: MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.width,
                child: Image.asset(
                  backgroundDeckCover,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(.5),
              )]
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DeckGridView(
                      whichToRender: GridViewRender.unselected,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: MiddleBarInfo(),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DeckGridView(
                      whichToRender: GridViewRender.selected,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
