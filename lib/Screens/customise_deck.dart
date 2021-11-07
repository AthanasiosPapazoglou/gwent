import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/widgets/deck_grid_view.dart';
import 'package:gwent/widgets/filter_row.dart';
import 'package:gwent/widgets/leader_card_widget.dart';
import 'package:gwent/widgets/middle_bar_info.dart';

class CustomiseDeck extends StatefulWidget {
  final List listToRender;
  final String assetDirectory;

  CustomiseDeck({required this.listToRender, required this.assetDirectory});

  //String

  @override
  _CustomiseDeckState createState() => _CustomiseDeckState();
}

class _CustomiseDeckState extends State<CustomiseDeck> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
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
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: DeckGridView(
                listToRender: widget.listToRender,
                assetDirectory: widget.assetDirectory,
              ),
            ),
          ),
          Flexible(
            child: MiddleBarInfo(
                leaderCardName: monstersLeaders[0].cardName,
                leaderSetDirectory: kMonLeadersAD),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: DeckGridView(
                listToRender: widget.listToRender,
                assetDirectory: widget.assetDirectory,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
