// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Card-Models/special_model.dart';
import 'package:gwent/Card-Models/leader_model.dart';

List <UnitCard> monstersUnits = [
  UnitCard(id: 0, cardName: 'Arachas 1.png', strength: 4, battlerow: BattleRows.melee, hasEffect: true, effect: BattleEffects.muster, isHero: false, /*cardState: cardState*/),
  UnitCard(id: 1, cardName: 'Arachas 2.png', strength: 4, battlerow: BattleRows.melee, hasEffect: true, effect: BattleEffects.muster, isHero: false, /*cardState: cardState*/),
  UnitCard(id: 2, cardName: 'Arachas 3.png', strength: 4, battlerow: BattleRows.melee, hasEffect: true, effect: BattleEffects.muster, isHero: false, /*cardState: cardState*/),
  UnitCard(id: 3, cardName: 'Arachas Behemoth.png', strength: 6, battlerow: BattleRows.siege, hasEffect: true, effect: BattleEffects.muster, isHero: false, /*cardState: cardState*/),
  UnitCard(id: 4, cardName: 'Botchling.png', strength: 4, battlerow: BattleRows.melee, hasEffect: false, effect: BattleEffects.none, isHero: false, /*cardState: cardState*/),
  UnitCard(id: 5, cardName: 'Calaeno Harpy.png', strength: 2, battlerow: BattleRows.agile, hasEffect: true, effect: BattleEffects.agile, isHero: false, /*cardState: cardState*/),
  UnitCard(id: 6, cardName: 'Cockatrice.png', strength: 2, battlerow: BattleRows.ranged, hasEffect: false, effect: BattleEffects.none, isHero: false, /*cardState: cardState*/),
];