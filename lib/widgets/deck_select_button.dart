// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/Screens/customise_deck.dart';
import 'package:gwent/widgets/customiseDeck/deck_grid_view.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';

class DeckButton extends StatelessWidget {
  final String imageURL;
  final String deckName;
  final String assetDirectory;//path συγκεκριμενου Units Deck
  final Color deckColors;
  final String subtitleText;
  final int unselectedIndex;
  final int selectedIndex;

  DeckButton({
      required this.imageURL,
      required this.deckName,
      required this.assetDirectory,//path συγκεκριμενου Units Deck
      required this.deckColors,
      required this.subtitleText,
      required this.unselectedIndex,
      required this.selectedIndex
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomiseDeck(
              assetDirectory: assetDirectory, //αφορα τις εικονες του deck
              unselectedIndex: unselectedIndex,
              selectedIndex: selectedIndex,
            ),
          ),
        );
        // Navigator.push(context, MaterialPageRoute(builder: (context) => DeckGridView(listToRender: listToRender, assetDirectory: assetDirectory),),);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        child: Card(
          elevation: 4,
          color: deckColors,
          child: ListTile(
            trailing: Image(
              height: 40,
              width: 22.5,
              image: AssetImage(imageURL),
            ),
            title: Text(
              deckName,
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
            subtitle: Text(
              subtitleText,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
