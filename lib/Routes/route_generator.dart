import 'package:flutter/material.dart';
import 'package:gwent/Routes/route_name.dart';
import 'package:gwent/Screens/splash_screen.dart';
import 'package:gwent/Screens/updater_screen.dart';

import '../Screens/customise_deck.dart';
import '../Screens/game_screen.dart';
import '../Screens/main_Menu.dart';
import '../Screens/setup_deck_menu.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        {
          return MaterialPageRoute(
              builder: (_) => const SplashScreen(), settings: settings);
        }
      case RouteName.packageUpdater:
        {
          return MaterialPageRoute(
              builder: (_) => const UpdaterScreen(), settings: settings);
        }
      case RouteName.mainMenu:
        {
          return MaterialPageRoute(
              builder: (_) => MainMenuScreen(), settings: settings);
        }
      case RouteName.deckSetup:
        {
          return MaterialPageRoute(
              builder: (_) => SetupDecksMenuScreen(), settings: settings);
        }
      case RouteName.deckCustomization:
        {
          return MaterialPageRoute(
              builder: (_) => CustomiseDeckScreen(), settings: settings);
        }
      case RouteName.game:
        {
          return MaterialPageRoute(
              builder: (_) => GameScreen(), settings: settings);
        }
      default:
        {
          return _errorRoute(settings);
        }
    }
  }

  static Route<dynamic> _errorRoute(settings) {
    // implement error page
    return MaterialPageRoute(
        builder: (_) => Scaffold(
            appBar: AppBar(),
            body: Container(
              child: const Text('Error page'),
            )),
        settings: settings);
  }
}
