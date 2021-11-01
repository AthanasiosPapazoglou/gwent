// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Card-Models/special_model.dart';
import 'package:gwent/Card-Models/leader_model.dart';

List <UnitCard> monstersUnits = [
  UnitCard(id: 0, cardName: 'Arachas 1.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 1, cardName: 'Arachas 2.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 2, cardName: 'Arachas 3.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 3, cardName: 'Arachas Behemoth.png', strength: 6, battlerow: bRows.siege, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 4, cardName: 'Botchling.png', strength: 4, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false,),
  UnitCard(id: 5, cardName: 'Calaeno Harpy.png', strength: 2, battlerow: bRows.agile, hasEffect: true, effect: bEffects.agile, isHero: false,),
  UnitCard(id: 6, cardName: 'Cockatrice.png', strength: 2, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: false,),
  UnitCard(id: 7, cardName: 'Crone Brewess.png', strength: 6, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 8, cardName: 'Crone Weavess.png', strength: 6, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 9, cardName: 'Crone Whispess.png', strength: 6, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 10, cardName: 'Draug.png', strength: 10, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: true,),
  UnitCard(id: 11, cardName: 'Earth Elemental.png', strength: 6, battlerow: bRows.siege, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 12, cardName: 'Endrega.png', strength: 2, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 13, cardName: 'Fiend.png', strength: 6, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 14, cardName: 'Fire Elemental.png', strength: 6, battlerow: bRows.siege, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 15, cardName: 'Foglet.png', strength: 2, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 16, cardName: 'Forktail.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 17, cardName: 'Frightener.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 18, cardName: 'Gargoyle.png', strength: 2, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 19, cardName: 'Ghoul 1.png', strength: 1, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 20, cardName: 'Ghoul 2.png', strength: 1, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 21, cardName: 'Ghoul 3.png', strength: 1, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
];

