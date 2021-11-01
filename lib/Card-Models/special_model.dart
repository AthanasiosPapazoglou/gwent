import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class SpecialCard {
  final String id;
  final String cardName;
  final bRows battlerow;
  final bEffects effect;
  final CardState cardState;

  SpecialCard(
      {required this.id,
      required this.cardName,
      required this.battlerow,
      required this.effect,
      required this.cardState
      });
}
