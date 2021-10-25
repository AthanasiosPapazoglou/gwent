// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:gwent/widgets/deck_select_button.dart';

class SetupDecks extends StatelessWidget {

  static const routeName = '/Setup-Decks-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black54,
        child: Column(
          children: <DeckButton>[
          DeckButton(imageURL: 'GameAssets/Rules/Monsters back.png',),
          DeckButton(imageURL: 'GameAssets/Rules/Nilfgaardian back.png',),
          DeckButton(imageURL: 'GameAssets/Rules/Northern Realms back.png',),
          DeckButton(imageURL: 'GameAssets/Rules/Scoia\'tael back.png',),
          ]
        ),
      ),
    );
  }
}