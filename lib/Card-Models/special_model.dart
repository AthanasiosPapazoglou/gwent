import 'package:flutter/material.dart';
import '../enums.dart';

class SpecialCard {
  final String id;
  final String cardName;
  final BattleRows battlerow;
  final BattleEffects effect;
  final CardState cardState;

  SpecialCard(
      {required this.id,
      required this.cardName,
      required this.battlerow,
      required this.effect,
      required this.cardState
      });
}
