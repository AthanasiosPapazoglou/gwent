import 'package:flutter/material.dart';
import '../enums.dart';

class LeaderCard {
  final String id;
  final String cardName;
  final LeaderEffect leaderEffect;
  final CardState cardState;

  LeaderCard({
      required this.id,
      required this.cardName,
      required this.leaderEffect,
      required this.cardState
      });
}
