import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class SpecialCard {
  final int id;
  final String cardName;
  final wEffects weatherEffect;
  final brows battlerow;
  final beffects battleEffect;

  SpecialCard(
      {required this.id,
      required this.cardName,
      required this.weatherEffect,
      required this.battlerow,
      required this.battleEffect,
      });
}
