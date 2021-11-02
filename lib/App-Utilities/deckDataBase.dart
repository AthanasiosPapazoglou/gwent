// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Card-Models/special_model.dart';
import 'package:gwent/Card-Models/leader_model.dart';

List <UnitCard> neutralUnits = [
  UnitCard(id: 0, cardName: 'Cirilla Fiona Elen Rianno 2.png', strength: 15, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: true,),
  UnitCard(id: 1, cardName: 'Dandelion 2.png', strength: 2, battlerow: bRows.melee, hasEffect: true, effect: bEffects.horn, isHero: false,),
  UnitCard(id: 2, cardName: 'Emiel Regis Rohellec Terzieff 2.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false,),
  UnitCard(id: 3, cardName: 'Geralt of Rivia 2.png', strength: 15, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: true,),
  UnitCard(id: 4, cardName: 'Mysterious Elf 2.png', strength: 0, battlerow: bRows.melee, hasEffect: true, effect: bEffects.spy, isHero: true,),
  UnitCard(id: 5, cardName: 'Triss Merigold 2.png', strength: 7, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: true,),
  UnitCard(id: 6, cardName: 'Vesemir 2.png', strength: 6, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false,),
  UnitCard(id: 7, cardName: 'Villentretenmerth 2.png', strength: 7, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false,),
  UnitCard(id: 8, cardName: 'Yennefer of Vengerberg 2.png', strength: 7, battlerow: bRows.ranged, hasEffect: true, effect: bEffects.medic, isHero: true,),
  UnitCard(id: 9, cardName: 'Zoltan Chivay 2.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
];

List <SpecialCard> specialCards = [
  SpecialCard(id: 0, cardName: 'Biting Frost 1.png', weatherEffect: wEffects.frost, battlerow: bRows.arena, battleEffect: bEffects.none,),
  SpecialCard(id: 1, cardName: 'Biting Frost 1.png', weatherEffect: wEffects.frost, battlerow: bRows.arena, battleEffect: bEffects.none,),
  SpecialCard(id: 2, cardName: 'Biting Frost 1.png', weatherEffect: wEffects.frost, battlerow: bRows.arena, battleEffect: bEffects.none,),
  SpecialCard(id: 3, cardName: 'Impenetrable Fog 1.png', weatherEffect: wEffects.fog, battlerow: bRows.arena, battleEffect: bEffects.none),
  SpecialCard(id: 4, cardName: 'Impenetrable Fog 1.png', weatherEffect: wEffects.fog, battlerow: bRows.arena, battleEffect: bEffects.none),
  SpecialCard(id: 5, cardName: 'Impenetrable Fog 1.png', weatherEffect: wEffects.fog, battlerow: bRows.arena, battleEffect: bEffects.none),
  SpecialCard(id: 6, cardName: 'Torrential Rain 1.png', weatherEffect: wEffects.rain, battlerow: bRows.arena, battleEffect: bEffects.none),
  SpecialCard(id: 7, cardName: 'Torrential Rain 1.png', weatherEffect: wEffects.rain, battlerow: bRows.arena, battleEffect: bEffects.none),
  SpecialCard(id: 8, cardName: 'Torrential Rain 1.png', weatherEffect: wEffects.rain, battlerow: bRows.arena, battleEffect: bEffects.none),
  SpecialCard(id: 9, cardName: 'Clear Weather 1.png', weatherEffect: wEffects.clear, battlerow: bRows.arena, battleEffect: bEffects.none,),
  SpecialCard(id: 10, cardName: 'Clear Weather 1.png', weatherEffect: wEffects.clear, battlerow: bRows.arena, battleEffect: bEffects.none,),
  SpecialCard(id: 11, cardName: 'Clear Weather 1.png', weatherEffect: wEffects.clear, battlerow: bRows.arena, battleEffect: bEffects.none,),
  SpecialCard(id: 12, cardName: 'Commander \'s Horn 1.png', weatherEffect: wEffects.none, battlerow: bRows.limitless, battleEffect: bEffects.horn,),
  SpecialCard(id: 13, cardName: 'Commander \'s Horn 1.png', weatherEffect: wEffects.none, battlerow: bRows.limitless, battleEffect: bEffects.horn,),
  SpecialCard(id: 14, cardName: 'Commander \'s Horn 1.png', weatherEffect: wEffects.none, battlerow: bRows.limitless, battleEffect: bEffects.horn,),
  SpecialCard(id: 15, cardName: 'Decoy 1.png', weatherEffect: wEffects.none, battlerow: bRows.limitless, battleEffect: bEffects.decoy,),
  SpecialCard(id: 16, cardName: 'Decoy 1.png', weatherEffect: wEffects.none, battlerow: bRows.limitless, battleEffect: bEffects.decoy,),
  SpecialCard(id: 17, cardName: 'Decoy 1.png', weatherEffect: wEffects.none, battlerow: bRows.limitless, battleEffect: bEffects.decoy,),
  SpecialCard(id: 18, cardName: 'Scorch 1.png', weatherEffect: wEffects.none, battlerow: bRows.arena, battleEffect: bEffects.scortch),
  SpecialCard(id: 19, cardName: 'Scorch 1.png', weatherEffect: wEffects.none, battlerow: bRows.arena, battleEffect: bEffects.scortch),
  SpecialCard(id: 20, cardName: 'Scorch 1.png', weatherEffect: wEffects.none, battlerow: bRows.arena, battleEffect: bEffects.scortch),
  

];

List<LeaderCard> monstersLeaders = [
  LeaderCard(id: 0, cardName: 'Ereding Bringer of Death.png', leaderEffect: LeaderEffect.mon1,),
  LeaderCard(id: 1, cardName: 'Eredin Commander of the Red Riders.png', leaderEffect: LeaderEffect.mon2),
  LeaderCard(id: 2, cardName: 'Eredin Destroyer of Worlds.png', leaderEffect: LeaderEffect.mon3),
  LeaderCard(id: 3, cardName: '', leaderEffect: LeaderEffect.mon4),
];

List <UnitCard> monstersUnits = [
  UnitCard(id: 0, cardName: 'Arachas 1.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 1, cardName: 'Arachas 2.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 2, cardName: 'Arachas 3.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 3, cardName: 'Arachas Behemoth.png', strength: 6, battlerow: bRows.siege, hasEffect: true, effect: bEffects.muster, isHero: false,),
  UnitCard(id: 4, cardName: 'Botchling.png', strength: 4, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false,),
  UnitCard(id: 5, cardName: 'Calaeno Harpy.png', strength: 2, battlerow: bRows.agile, hasEffect: false, effect: bEffects.none, isHero: false,),
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
  UnitCard(id: 22, cardName: 'Grave Hag.png', strength: 5, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 23, cardName: 'Griffin.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 24, cardName: 'Harpy.png', strength: 2, battlerow: bRows.agile, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 25, cardName: 'Ice Giant.png', strength: 6, battlerow: bRows.siege, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 26, cardName: 'Imlerith.png', strength: 10, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: true),
  UnitCard(id: 27, cardName: 'Kayran.png', strength: 8, battlerow: bRows.agile, hasEffect: true, effect: bEffects.morale, isHero: true), //! 2 EFFECTS!!!!
  UnitCard(id: 28, cardName: 'Leshen.png', strength: 10, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: true),
  UnitCard(id: 29, cardName: 'Nekker 1.png', strength: 2, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 30, cardName: 'Nekker 2.png', strength: 2, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 31, cardName: 'Nekker 3.png', strength: 2, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 32, cardName: 'Plague Maiden.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 33, cardName: 'Vampire Bruxa.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 34, cardName: 'Vampire Ekimmara.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 35, cardName: 'Vampire Fleder.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 36, cardName: 'Vampire Garkain.png', strength: 4, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 37, cardName: 'Vampire Katakan.png', strength: 5, battlerow: bRows.melee, hasEffect: true, effect: bEffects.muster, isHero: false),
  UnitCard(id: 38, cardName: 'Werewolf.png', strength: 5, battlerow: bRows.melee, hasEffect: false, effect: bEffects.none, isHero: false),
  UnitCard(id: 39, cardName: 'Wyvern.png', strength: 2, battlerow: bRows.ranged, hasEffect: false, effect: bEffects.none, isHero: false),
];

