// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'package:gwent/Screens/customise_deck.dart';
import 'package:gwent/widgets/customiseDeck/deck_grid_view.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:provider/provider.dart';

import 'dart:typed_data';
import 'dart:ui' as ui;

class DeckButton extends StatelessWidget {
  final String imageURL;
  final String deckName;
  final Color deckColors;
  final String subtitleText;
  final deckAssets assets;
  final Function highLightChanger;
  final int selectedIndex;
  final int deckHighlightIndex;

  DeckButton(
      {required this.imageURL,
      required this.deckName,
      required this.deckColors,
      required this.subtitleText,
      required this.assets,
      required this.highLightChanger,
      required this.selectedIndex,
      required this.deckHighlightIndex});

  @override
  Widget build(BuildContext context) {
    final customDecks = Provider.of<CustomDecks>(context);
    return InkWell(
      onTap: () {
        customDecks.playerDeckSelection = assets;
        highLightChanger(deckHighlightIndex);
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        child: (selectedIndex == deckHighlightIndex)
            ? Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: deckColors.withOpacity(.8),
                          spreadRadius: 6,
                          blurRadius: 6,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage(imageURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.black.withOpacity(.6),
                  ),
                  Text(
                    deckName,
                    style: TextStyle(
                        fontSize: 30,
                        color: deckColors,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            : Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Image(
                  image: AssetImage(imageURL),
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
