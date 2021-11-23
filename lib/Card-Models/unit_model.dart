import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class UnitCard {
  late final int id;
  late final String cardName;
  late final int strength;
  late final Weffects weatherEffect;
  late final Brows battlerow;
  late final Beffects effect;
  late final bool isHero;
  //final CardState cardState;

  UnitCard({
    required this.id,
    required this.cardName,
    required this.strength,
    required this.weatherEffect,
    required this.battlerow,
    required this.effect,
    required this.isHero,
    //required this.cardState
  });

  UnitCard.fromJson(Map json) {
    id = json['id'];
    cardName = json['imageFilename'];
    strength = json['strength'];
    var row = json['row'];
    switch (row) {
      case 'melee':
        battlerow = Brows.melee;
        break;
      // TODO
    }
    var effectJson = json['effect'];
    switch (effectJson) {
    }
    isHero = json['isHero'];
  }
}
