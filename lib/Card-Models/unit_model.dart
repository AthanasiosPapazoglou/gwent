import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class UnitCard {
  final int id;
  final String cardName;
  final int strength;
  final brows battlerow;
  final bool hasEffect;
  final beffects effect;
  final bool isHero;
  //final CardState cardState;

  UnitCard(
      {required this.id,
      required this.cardName,
      required this.strength,
      required this.battlerow,
      required this.hasEffect,
      required this.effect,
      required this.isHero,
      //required this.cardState
      });
}
