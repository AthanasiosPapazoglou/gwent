import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class UnitCard {
  final String id;
  final String cardName;
  final int strength;
  final BattleRows battlerow;
  final bool hasEffect;
  final BattleEffects effect;
  final bool isHero;
  final CardState cardState;

  UnitCard(
      {required this.id,
      required this.cardName,
      required this.strength,
      required this.battlerow,
      required this.hasEffect,
      required this.effect,
      required this.isHero,
      required this.cardState
      });
}
