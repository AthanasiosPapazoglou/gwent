import 'package:flutter/material.dart';
import '../App-Utilities/enums.dart';

class UnitCard {
  late final int id;
  late final String imageFilename;
  late final int strength;
  late final Brows battleRow;
  late final Beffects effect;
  late final bool isHero;

  UnitCard({
    required this.id,
    required this.imageFilename,
    required this.strength,
    required this.battleRow,
    required this.effect,
    required this.isHero,
  });

  UnitCard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageFilename = json['imageFilename'];
    strength = json['strength'];

    var battleRow = json['battleRow'];
    switch (battleRow) {
      case 'melee': battleRow = Brows.melee; break;
      case 'ranged': battleRow = Brows.ranged; break;
      case 'siege': battleRow = Brows.siege; break;
      case 'limitless': battleRow = Brows.limitless; break;
      case 'arena': battleRow = Brows.arena; break;
    }

    var effect = json['effect'];
    switch (effect) {
      case 'none': effect = Beffects.none; break;
      case 'decoy': effect = Beffects.decoy; break;
      case 'horn': effect = Beffects.horn; break;
      case 'scortch': effect = Beffects.scortch; break;
      case 'meleeScotch': effect = Beffects.meleeScortch; break;
      case 'spy': effect = Beffects.spy; break;
      case 'bond': effect = Beffects.bond; break;
      case 'muster': effect = Beffects.muster; break;
      case 'morale': effect = Beffects.morale; break;
      case 'medic': effect = Beffects.medic; break;
    }

    isHero = json['isHero'];

    Map<String, dynamic> toJson() => {
      'id': id,
      'imageFilename': imageFilename,
      'strength': strength,
      'battleRow': battleRow,
      'effect': effect,
    };
  }

  
}




// none, decoy, horn, scortch, meleeScortch, spy, bond, muster, morale, medic