import 'dart:convert';

import 'package:enum_to_string/enum_to_string.dart';

import '../App-Utilities/enums.dart';

class LeaderCard {
  final int id;
  final String cardName;
  final LeaderEffect leaderEffect;

  LeaderCard({
    required this.id,
    required this.cardName,
    required this.leaderEffect,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cardName': cardName,
      'leaderEffect': EnumToString.convertToString(leaderEffect),
    };
  }

  factory LeaderCard.fromMap(Map<String, dynamic> map) {
    return LeaderCard(
      id: map['id']?.toInt() ?? 0,
      cardName: map['cardName'] ?? '',
      leaderEffect:
          EnumToString.fromString(LeaderEffect.values, map['leaderEffect'])
              as LeaderEffect,
    );
  }

  String toJson() => json.encode(toMap());

  factory LeaderCard.fromJson(String source) =>
      LeaderCard.fromMap(json.decode(source));
}
