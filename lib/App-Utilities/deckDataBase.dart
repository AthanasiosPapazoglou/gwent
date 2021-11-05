// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Card-Models/special_model.dart';
import 'package:gwent/Card-Models/leader_model.dart';

List <UnitCard> neutralUnits = [
  UnitCard(id: 0, cardName: 'Cirilla Fiona Elen Rianno 2.png', strength: 15, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true,),
  UnitCard(id: 1, cardName: 'Dandelion 2.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.horn, isHero: false,),
  UnitCard(id: 2, cardName: 'Emiel Regis Rohellec Terzieff 2.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false,),
  UnitCard(id: 3, cardName: 'Geralt of Rivia 2.png', strength: 15, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true,),
  UnitCard(id: 4, cardName: 'Mysterious Elf 2.png', strength: 0, battlerow: brows.melee, hasEffect: true, effect: beffects.spy, isHero: true,),
  UnitCard(id: 5, cardName: 'Triss Merigold 2.png', strength: 7, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true,),
  UnitCard(id: 6, cardName: 'Vesemir 2.png', strength: 6, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false,),
  UnitCard(id: 7, cardName: 'Villentretenmerth 2.png', strength: 7, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false,),
  UnitCard(id: 8, cardName: 'Yennefer of Vengerberg 2.png', strength: 7, battlerow: brows.ranged, hasEffect: true, effect: beffects.medic, isHero: true,),
  UnitCard(id: 9, cardName: 'Zoltan Chivay 2.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
];

List <SpecialCard> specialCards = [
  SpecialCard(id: 0, cardName: 'Biting Frost 1.png', weatherEffect: wEffects.frost, battlerow: brows.arena, battleEffect: beffects.none,),
  SpecialCard(id: 1, cardName: 'Biting Frost 1.png', weatherEffect: wEffects.frost, battlerow: brows.arena, battleEffect: beffects.none,),
  SpecialCard(id: 2, cardName: 'Biting Frost 1.png', weatherEffect: wEffects.frost, battlerow: brows.arena, battleEffect: beffects.none,),
  SpecialCard(id: 3, cardName: 'Impenetrable Fog 1.png', weatherEffect: wEffects.fog, battlerow: brows.arena, battleEffect: beffects.none),
  SpecialCard(id: 4, cardName: 'Impenetrable Fog 1.png', weatherEffect: wEffects.fog, battlerow: brows.arena, battleEffect: beffects.none),
  SpecialCard(id: 5, cardName: 'Impenetrable Fog 1.png', weatherEffect: wEffects.fog, battlerow: brows.arena, battleEffect: beffects.none),
  SpecialCard(id: 6, cardName: 'Torrential Rain 1.png', weatherEffect: wEffects.rain, battlerow: brows.arena, battleEffect: beffects.none),
  SpecialCard(id: 7, cardName: 'Torrential Rain 1.png', weatherEffect: wEffects.rain, battlerow: brows.arena, battleEffect: beffects.none),
  SpecialCard(id: 8, cardName: 'Torrential Rain 1.png', weatherEffect: wEffects.rain, battlerow: brows.arena, battleEffect: beffects.none),
  SpecialCard(id: 9, cardName: 'Clear Weather 1.png', weatherEffect: wEffects.clear, battlerow: brows.arena, battleEffect: beffects.none,),
  SpecialCard(id: 10, cardName: 'Clear Weather 1.png', weatherEffect: wEffects.clear, battlerow: brows.arena, battleEffect: beffects.none,),
  SpecialCard(id: 11, cardName: 'Clear Weather 1.png', weatherEffect: wEffects.clear, battlerow: brows.arena, battleEffect: beffects.none,),
  SpecialCard(id: 12, cardName: 'Commander \'s Horn 1.png', weatherEffect: wEffects.none, battlerow: brows.limitless, battleEffect: beffects.horn,),
  SpecialCard(id: 13, cardName: 'Commander \'s Horn 1.png', weatherEffect: wEffects.none, battlerow: brows.limitless, battleEffect: beffects.horn,),
  SpecialCard(id: 14, cardName: 'Commander \'s Horn 1.png', weatherEffect: wEffects.none, battlerow: brows.limitless, battleEffect: beffects.horn,),
  SpecialCard(id: 15, cardName: 'Decoy 1.png', weatherEffect: wEffects.none, battlerow: brows.limitless, battleEffect: beffects.decoy,),
  SpecialCard(id: 16, cardName: 'Decoy 1.png', weatherEffect: wEffects.none, battlerow: brows.limitless, battleEffect: beffects.decoy,),
  SpecialCard(id: 17, cardName: 'Decoy 1.png', weatherEffect: wEffects.none, battlerow: brows.limitless, battleEffect: beffects.decoy,),
  SpecialCard(id: 18, cardName: 'Scorch 1.png', weatherEffect: wEffects.none, battlerow: brows.arena, battleEffect: beffects.scortch),
  SpecialCard(id: 19, cardName: 'Scorch 1.png', weatherEffect: wEffects.none, battlerow: brows.arena, battleEffect: beffects.scortch),
  SpecialCard(id: 20, cardName: 'Scorch 1.png', weatherEffect: wEffects.none, battlerow: brows.arena, battleEffect: beffects.scortch),
  

];


//! MONSTARZ------------------------------------
List <UnitCard> monstersUnits = [
  UnitCard(id: 0, cardName: 'Arachas 1.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 1, cardName: 'Arachas 2.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 2, cardName: 'Arachas 3.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 3, cardName: 'Arachas Behemoth.png', strength: 6, battlerow: brows.siege, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 4, cardName: 'Botchling.png', strength: 4, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false,),
  UnitCard(id: 5, cardName: 'Celaeno Harpy.png', strength: 2, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false,),
  UnitCard(id: 6, cardName: 'Cockatrice.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false,),
  UnitCard(id: 7, cardName: 'Crone Brewess.png', strength: 6, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 8, cardName: 'Crone Weavess.png', strength: 6, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 9, cardName: 'Crone Whispess.png', strength: 6, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false,),
  UnitCard(id: 10, cardName: 'Draug.png', strength: 10, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true,),
  UnitCard(id: 11, cardName: 'Earth Elemental.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 12, cardName: 'Endrega.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 13, cardName: 'Fiend.png', strength: 6, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 14, cardName: 'Fire Elemental.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 15, cardName: 'Foglet.png', strength: 2, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 16, cardName: 'Forktail.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 17, cardName: 'Frightener.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 18, cardName: 'Gargoyle.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 19, cardName: 'Ghoul 1.png', strength: 1, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 20, cardName: 'Ghoul 2.png', strength: 1, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 21, cardName: 'Ghoul 3.png', strength: 1, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 22, cardName: 'Grave Hag.png', strength: 5, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 23, cardName: 'Griffin.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 24, cardName: 'Harpy.png', strength: 2, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 25, cardName: 'Ice Giant.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 26, cardName: 'Imlerith.png', strength: 10, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 27, cardName: 'Kayran.png', strength: 8, battlerow: brows.agile, hasEffect: true, effect: beffects.morale, isHero: true), //! 2 EFFECTS!!!!
  UnitCard(id: 28, cardName: 'Leshen.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 29, cardName: 'Nekker 1.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 30, cardName: 'Nekker 2.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 31, cardName: 'Nekker 3.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 32, cardName: 'Plague Maiden.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 33, cardName: 'Vampire Bruxa.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 34, cardName: 'Vampire Ekimmara.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 35, cardName: 'Vampire Fleder.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 36, cardName: 'Vampire Garkain.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 37, cardName: 'Vampire Katakan.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
  UnitCard(id: 38, cardName: 'Werewolf.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 39, cardName: 'Wyvern.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
];



//! MILFGUARD ---------------------------------
List <UnitCard> nilfggardUnits = [
  UnitCard(id: 0, cardName: 'Albrich.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 1, cardName: 'Assire var Anahid.png', strength: 6, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 2, cardName: 'Black Infantry Archer 1.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 3, cardName: 'Black Infantry Archer 2.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 4, cardName: 'Cahir Mawr Dyffryn aep Ceallach.png', strength: 6, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 5, cardName: 'Cynthia.png', strength: 4, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 6, cardName: 'Etolian Auxiliary Archers 1.png', strength: 1, battlerow: brows.ranged, hasEffect: true, effect: beffects.medic, isHero: false),
  UnitCard(id: 7, cardName: 'Etolian Auxiliary Archers 2.png', strength: 1, battlerow: brows.ranged, hasEffect: true, effect: beffects.medic, isHero: false),
  UnitCard(id: 8, cardName: 'Fringilla Vigo.png', strength: 6, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 9, cardName: 'Heavy Zerrikanian Fire Scorpion.png', strength: 10, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 10, cardName: 'Impera Brigade Guard 1.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 11, cardName: 'Impera Brigade Guard 2.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 12, cardName: 'Impera Brigade Guard 3.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 13, cardName: 'Impera Brigade Guard 4.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 14, cardName: 'Letho of Gulet.png', strength: 10, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 15, cardName: 'Menno Coehoorn.png', strength: 10, battlerow: brows.melee, hasEffect: true, effect: beffects.medic, isHero: true),
  UnitCard(id: 16, cardName: 'Morteisen.png', strength: 3, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 17, cardName: 'Morvran Voorhis.png', strength: 10, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 18, cardName: 'Nausicaa Cavalry Rider 1.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 19, cardName: 'Nausicaa Cavalry Rider 2.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 20, cardName: 'Nausicaa Cavalry Rider 3.png', strength: 2, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 21, cardName: 'Puttkammer.png', strength: 3, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 22, cardName: 'Rainfarn.png', strength: 4, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 23, cardName: 'Renuald aep Matsen.png', strength: 5, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 24, cardName: 'Rotten Mangonel.png', strength: 3, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 25, cardName: 'Shilard Fitz-Oesterlen.png', strength: 7, battlerow: brows.melee, hasEffect: true, effect: beffects.spy, isHero: false),
  UnitCard(id: 26, cardName: 'Siege Engineer.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 27, cardName: 'Siege Technician.png', strength: 0, battlerow: brows.siege, hasEffect: true, effect: beffects.medic, isHero: false),
  UnitCard(id: 28, cardName: 'Stefan Skellen.png', strength: 9, battlerow: brows.melee, hasEffect: true, effect: beffects.spy, isHero: false),
  UnitCard(id: 29, cardName: 'Sweers.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 30, cardName: 'Tibor Eggebracht.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 31, cardName: 'Vanhemar.png', strength: 4, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 32, cardName: 'Vattier de Rideaux.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.spy, isHero: false),
  UnitCard(id: 33, cardName: 'Vreemde.png', strength: 2, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 34, cardName: 'Young Emissary 1.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 35, cardName: 'Young Emissary 2.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 36, cardName: 'Zerrikanian Fire Scorpion.png', strength: 5, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false)
];



//! Northern Realms----------------------
List <UnitCard> northernRealmsUnits = [
  UnitCard(id: 0, cardName: 'Ballista 1.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 1, cardName: 'Ballista 2.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 2, cardName: 'Blue Stripes Commando 1.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 3, cardName: 'Blue Stripes Commando 2.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 4, cardName: 'Blue Stripes Commando 3.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 5, cardName: 'Catapult 1.png', strength: 8, battlerow: brows.siege, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 6, cardName: 'Catapult 2.png', strength: 8, battlerow: brows.siege, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 7, cardName: 'Crinfrid Reavers Dragon Hunter 1.png', strength: 5, battlerow: brows.ranged, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 8, cardName: 'Crinfrid Reavers Dragon Hunter 2.png', strength: 5, battlerow: brows.ranged, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 9, cardName: 'Crinfrid Reavers Dragon Hunter 3.png', strength: 5, battlerow: brows.ranged, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 10, cardName: 'Dethmold.png', strength: 6, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 11, cardName: 'Dun Banner Medic.png', strength: 5, battlerow: brows.siege, hasEffect: true, effect: beffects.medic, isHero: false),
  UnitCard(id: 12, cardName: 'Esterad Thyssen.png', strength: 10, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 13, cardName: 'John Natalis.png', strength: 10, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 14, cardName: 'Kaedweni Siege Expert 1.png', strength: 1, battlerow: brows.siege, hasEffect: true, effect: beffects.morale, isHero: false),
  UnitCard(id: 15, cardName: 'Kaedweni Siege Expert 2.png', strength: 1, battlerow: brows.siege, hasEffect: true, effect: beffects.morale, isHero: false),
  UnitCard(id: 16, cardName: 'Kaedweni Siege Expert 3.png', strength: 1, battlerow: brows.siege, hasEffect: true, effect: beffects.morale, isHero: false),
  UnitCard(id: 17, cardName: 'Keira Metz.png', strength: 5, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 18, cardName: 'Philippa Eilhart.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 19, cardName: 'Poor Fucking Infantry 1.png', strength: 1, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),
  UnitCard(id: 20, cardName: 'Poor Fucking Infantry 2.png', strength: 1, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false), 
  UnitCard(id: 21, cardName: 'Poor Fucking Infantry 3.png', strength: 1, battlerow: brows.melee, hasEffect: true, effect: beffects.bond, isHero: false),   
  UnitCard(id: 22, cardName: 'Prince Stennis.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.spy, isHero: false),
  UnitCard(id: 23, cardName: 'Redanian Foot Soldier 1.png', strength: 1, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 24, cardName: 'Redanian Foot Soldier 2.png', strength: 1, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 25, cardName: 'Sabrina Glevissig.png', strength: 4, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 26, cardName: 'Sheldon Skaggs.png', strength: 4, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 27, cardName: 'Siege Tower 1.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 28, cardName: 'Siege Tower 2.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 29, cardName: 'Siegfried of Denesle.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 30, cardName: 'Sigismund Dijkstra.png', strength: 4, battlerow: brows.melee, hasEffect: true, effect: beffects.spy, isHero: false),
  UnitCard(id: 31, cardName: 'Sile de Tansarville.png', strength: 5, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 32, cardName: 'Thaler.png', strength: 1, battlerow: brows.siege, hasEffect: true, effect: beffects.spy, isHero: false),
  UnitCard(id: 33, cardName: 'Trebuchet 1.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 34, cardName: 'Trebuchet 2.png', strength: 6, battlerow: brows.siege, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 35, cardName: 'Vernon Roche.png', strength: 10, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: true),
  UnitCard(id: 36, cardName: 'Ves.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
  UnitCard(id: 37, cardName: 'Yarpen Zigrin.png', strength: 2, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
];


List <UnitCard> ScoiataelUnits = [
UnitCard(id: 0, cardName: 'Barclay Els.png', strength: 6, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 1, cardName: 'Ciaran aep Easnillien.png', strength: 3, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 2, cardName: 'Dennis Cranmer.png', strength: 6, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 3, cardName: 'Dol Blathanna Archer.png', strength: 4, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 4, cardName: 'Dol Blathanna Scout 1.png', strength: 6, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 5, cardName: 'Dol Blathanna Scout 2.png', strength: 6, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 6, cardName: 'Dol Blathanna Scout 3.png', strength: 6, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 7, cardName: 'Dwarven Skirmisher 1.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 8, cardName: 'Dwarven Skirmisher 2.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 9, cardName: 'Dwarven Skirmisher 3.png', strength: 3, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 10, cardName: 'Eithne.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true),
UnitCard(id: 11, cardName: 'Elven Skirmisher 1.png', strength: 2, battlerow: brows.ranged, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 12, cardName: 'Elven Skirmisher 2.png', strength: 2, battlerow: brows.ranged, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 13, cardName: 'Elven Skirmisher 3.png', strength: 2, battlerow: brows.ranged, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 14, cardName: 'Filavandrel aen Fidhail.png', strength: 6, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 15, cardName: 'Havekar Healer 1.png', strength: 0, battlerow: brows.ranged, hasEffect: true, effect: beffects.medic, isHero: false),
UnitCard(id: 16, cardName: 'Havekar Healer 2.png', strength: 0, battlerow: brows.ranged, hasEffect: true, effect: beffects.medic, isHero: false),
UnitCard(id: 17, cardName: 'Havekar Healer 3.png', strength: 0, battlerow: brows.ranged, hasEffect: true, effect: beffects.medic, isHero: false),
UnitCard(id: 18, cardName: 'Havekar Smuggler 1.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 19, cardName: 'Havekar Smuggler 2.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 20, cardName: 'Havekar Smuggler 3.png', strength: 5, battlerow: brows.melee, hasEffect: true, effect: beffects.muster, isHero: false),
UnitCard(id: 21, cardName: 'Ida Emean aep Sivney.png', strength: 6, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 22, cardName: 'Iorveth.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true),
UnitCard(id: 23, cardName: 'Isengrim Faolitarna.png', strength: 10, battlerow: brows.melee, hasEffect: true, effect: beffects.morale, isHero: true),
UnitCard(id: 24, cardName: 'Mahakaman Defender 1.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 25, cardName: 'Mahakaman Defender 2.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 26, cardName: 'Mahakaman Defender 3.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 27, cardName: 'Mahakaman Defender 4.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 28, cardName: 'Mahakaman Defender 5.png', strength: 5, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 29, cardName: 'Milva.png', strength: 10, battlerow: brows.ranged, hasEffect: true, effect: beffects.morale, isHero: false),
UnitCard(id: 30, cardName: 'Riordain.png', strength: 1, battlerow: brows.melee, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 31, cardName: 'Saesenthessis.png', strength: 10, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: true),
UnitCard(id: 32, cardName: 'Toruviel.png', strength: 2, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 33, cardName: 'Vrihedd Brigade Recruit.png', strength: 4, battlerow: brows.ranged, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 34, cardName: 'Vrihedd Brigade Veteran 1.png', strength: 5, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 35, cardName: 'Vrihedd Brigade Veteran 2.png', strength: 5, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),
UnitCard(id: 36, cardName: 'Yaevinn.png', strength: 6, battlerow: brows.agile, hasEffect: false, effect: beffects.none, isHero: false),




];








List<LeaderCard> monstersLeaders = [
  LeaderCard(id: 0, cardName: 'Ereding Bringer of Death.png', leaderEffect: LeaderEffect.mon1,),
  LeaderCard(id: 1, cardName: 'Eredin Commander of the Red Riders.png', leaderEffect: LeaderEffect.mon2),
  LeaderCard(id: 2, cardName: 'Eredin Destroyer of Worlds.png', leaderEffect: LeaderEffect.mon3),
  LeaderCard(id: 3, cardName: '', leaderEffect: LeaderEffect.mon4),
];
