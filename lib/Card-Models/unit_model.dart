import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class UnitCard {
  final int id;
  final String cardName;
  final int strength;
  final wEffects weatherEffect;
  final brows battlerow;
  final beffects effect;
  final bool isHero;
  //final CardState cardState;

  UnitCard(
      {@required this.id,
      @required this.cardName,
      @required this.strength,
      @required this.weatherEffect,
      @required this.battlerow,
      @required this.effect,
      @required this.isHero,
      //required this.cardState
      });
}
