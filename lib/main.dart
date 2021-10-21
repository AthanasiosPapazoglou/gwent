// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Screens/main_Menu.dart';
import 'package:flutter/services.dart';
import 'Screens/game_screen.dart';
import 'Screens/rules_screen.dart';
import 'Screens/setup-deck_screen.dart';

void main(){
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  ///////////// 
  runApp(Gwent());
} 

class Gwent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
      routes: {
         MainMenu.routeName: (ctx) => MainMenu(),
         Rules.routeName: (ctx) => Rules(),
         Game.routeName: (ctx) => Game(),
         SetupDecks.routeName: (ctx) => SetupDecks()
      },
    );
  }
}