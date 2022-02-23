import 'dart:convert';

import 'package:enum_to_string/enum_to_string.dart';

import '../App-Utilities/enums.dart';

class UnitCard {
  final int id;
  final String cardName;
  final int strength;
  final WeatherEffect weatherEffect;
  final BattleRow battlerow;
  final BattleEffect battleEffect;
  final bool isHero;
  //final CardState cardState;

  UnitCard({
    required this.id,
    required this.cardName,
    required this.strength,
    required this.weatherEffect,
    required this.battlerow,
    required this.battleEffect,
    required this.isHero,
    //required this.cardState
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cardName': cardName,
      'strength': strength,
      'weatherEffect': EnumToString.convertToString(weatherEffect),
      'battleRow': EnumToString.convertToString(battlerow),
      'battleEffect': EnumToString.convertToString(battleEffect),
      'isHero': isHero,
    };
  }

  factory UnitCard.fromMap(Map<String, dynamic> map) {
    return UnitCard(
      id: map['id']?.toInt() ?? 0,
      cardName: map['cardName'] ?? '',
      strength: map['strength']?.toInt() ?? 0,
      weatherEffect:
          EnumToString.fromString(WeatherEffect.values, map['weatherEffect'])
              as WeatherEffect,
      battlerow: EnumToString.fromString(BattleRow.values, map['battlerow'])
          as BattleRow,
      battleEffect:
          EnumToString.fromString(BattleEffect.values, map['battleEffect'])
              as BattleEffect,
      isHero: map['isHero'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UnitCard.fromJson(String source) =>
      UnitCard.fromMap(json.decode(source));
}
