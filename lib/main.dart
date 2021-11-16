// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/Providers/customDecks.dart';
import 'Screens/main_Menu.dart';
import 'package:flutter/services.dart';
import 'Screens/game_screen.dart';
import 'Screens/rules_screen.dart';
import 'Screens/setup_deck_menu.dart';
import 'package:gwent/widgets/customiseDeck/deck_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_service/audio_service.dart';
import 'package:provider/provider.dart';
import 'Providers/customDecks.dart';

void main(){
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIOverlays([]);
      print('print works');

  ///////////// 
  runApp(Gwent());
} 

class Gwent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CustomDecks(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
      routes: {
         MainMenu.routeName: (ctx) => MainMenu(),
         Rules.routeName: (ctx) => Rules(),
         Game.routeName: (ctx) => Game(),
         SetupDecksMenu.routeName: (ctx) => SetupDecksMenu(),
      },
    ),
    );
  }
}