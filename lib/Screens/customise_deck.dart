import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/widgets/customiseDeck/deck_grid_view.dart';
import 'package:gwent/widgets/customiseDeck/filter_row.dart';
import 'package:gwent/widgets/customiseDeck/leader_card_widget.dart';
import 'package:gwent/widgets/customiseDeck/middle_bar_info.dart';

class CustomiseDeck extends StatefulWidget {
  final String assetDirectory; //path συγκεκριμενου Units Deck
  final int unselectedIndex;
  final int selectedIndex;

  CustomiseDeck(
      {required this.assetDirectory,
      required this.unselectedIndex,
      required this.selectedIndex});

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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DeckGridView(
                assetDirectory: widget.assetDirectory,
                renderIndex: widget.unselectedIndex,
                compareIndex: widget.selectedIndex,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: MiddleBarInfo(
              leaderCardName: monstersLeaders[0].cardName,
              leaderSetDirectory: kMonLeadersAD,
              deckPath: widget.assetDirectory,
              renderIndex: widget.selectedIndex,
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DeckGridView(
                assetDirectory: widget.assetDirectory,
                renderIndex: widget.selectedIndex,
                compareIndex: widget.unselectedIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
