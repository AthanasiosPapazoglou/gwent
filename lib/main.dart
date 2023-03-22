// ignore_for_file: prefer_const_constructors
// HELLO WORLD!!!!

//TODO Diminish prop drill on gameplay screen
//TODO Refactor Provider so that we define the assets directories with the use of a methods from the provider
//TODO

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gwent/App-Utilities/functions.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'Screens/main_Menu.dart';
import 'package:flutter/services.dart';
import 'Screens/game_screen.dart';
import 'Screens/rules_screen.dart';
import 'Screens/deck_selection_page.dart';
import 'package:gwent/widgets/customiseDeck/deck_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_service/audio_service.dart';
import 'package:provider/provider.dart';
import 'Providers/customDecks.dart';
import 'package:gwent/Screens/customise_deck.dart';
import 'package:gwent/Screens/leader_selection.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  portraitMode();

  /////////////
  runApp(Gwent());
}

class Gwent extends StatefulWidget {
  @override
  State<Gwent> createState() => _GwentState();
}

class _GwentState extends State<Gwent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final assetsAudioPlayer = AssetsAudioPlayer();

    // assetsAudioPlayer.open(
    //   Audio("GameAssets/Music/I'm Helping the Idiot.mp3"),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
      routes: {
        MainMenu.routeName: (ctx) => MainMenu(),
        Rules.routeName: (ctx) => Rules(),
        Game.routeName: (ctx) => Game(),
        DeckSelectionMenu.routeName: (ctx) => DeckSelectionMenu(),
        CustomiseDeck.routeName: (ctx) => CustomiseDeck(),
        LeaderSelection.routeName: (ctx) => LeaderSelection(),
      },
    );
  }
}
