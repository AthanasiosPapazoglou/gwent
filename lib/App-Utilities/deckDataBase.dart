// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Card-Models/leader_model.dart';

List <UnitCard> neutralUnits = [
  UnitCard(id: 21, imageFilename: 'Cirilla Fiona Elen Rianno 2.png', strength: 15,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true,),
  UnitCard(id: 22, imageFilename: 'Dandelion 2.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.horn, isHero: false,),
  UnitCard(id: 23, imageFilename: 'Emiel Regis Rohellec Terzieff 2.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false,),
  UnitCard(id: 24, imageFilename: 'Geralt of Rivia 2.png', strength: 15,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true,),
  UnitCard(id: 25, imageFilename: 'Mysterious Elf 2.png', strength: 0,  battleRow: Brows.melee,  effect: Beffects.spy, isHero: true,),
  UnitCard(id: 26, imageFilename: 'Triss Merigold 2.png', strength: 7,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true,),
  UnitCard(id: 27, imageFilename: 'Vesemir 2.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false,),
  UnitCard(id: 28, imageFilename: 'Villentretenmerth 2.png', strength: 7,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false,),
  UnitCard(id: 29, imageFilename: 'Yennefer of Vengerberg 2.png', strength: 7,  battleRow: Brows.ranged,  effect: Beffects.medic, isHero: true,),
  UnitCard(id: 30, imageFilename: 'Zoltan Chivay 2.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
];

List <UnitCard> specialCards = [
  UnitCard(id: 0, imageFilename: 'Biting Frost 1.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 1, imageFilename: 'Biting Frost 2.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 2, imageFilename: 'Biting Frost 3.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 3, imageFilename: 'Impenetrable Fog 1.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 4, imageFilename: 'Impenetrable Fog 2.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 5, imageFilename: 'Impenetrable Fog 3.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 6, imageFilename: 'Torrential Rain 1.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 7, imageFilename: 'Torrential Rain 2.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 8, imageFilename: 'Torrential Rain 3.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false),
  UnitCard(id: 9, imageFilename: 'Clear Weather 1.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false,),
  UnitCard(id: 10, imageFilename: 'Clear Weather 2.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false,),
  UnitCard(id: 11, imageFilename: 'Clear Weather 3.png', strength: 0, battleRow: Brows.arena, effect: Beffects.none, isHero: false,),
  UnitCard(id: 12, imageFilename: 'Commanders Horn 1.png', strength: 0,  battleRow: Brows.limitless, effect: Beffects.horn, isHero: false,),
  UnitCard(id: 13, imageFilename: 'Commanders Horn 2.png', strength: 0,  battleRow: Brows.limitless, effect: Beffects.horn, isHero: false,),
  UnitCard(id: 14, imageFilename: 'Commanders Horn 3.png', strength: 0,  battleRow: Brows.limitless, effect: Beffects.horn, isHero: false,),
  UnitCard(id: 15, imageFilename: 'Decoy 1.png', strength: 0,  battleRow: Brows.limitless, effect: Beffects.decoy, isHero: false,),
  UnitCard(id: 16, imageFilename: 'Decoy 2.png', strength: 0,  battleRow: Brows.limitless, effect: Beffects.decoy, isHero: false,),
  UnitCard(id: 17, imageFilename: 'Decoy 3.png', strength: 0,  battleRow: Brows.limitless, effect: Beffects.decoy, isHero: false,),
  UnitCard(id: 18, imageFilename: 'Scorch 1.png', strength: 0,  battleRow: Brows.arena, effect: Beffects.scortch, isHero: false),
  UnitCard(id: 19, imageFilename: 'Scorch 2.png', strength: 0,  battleRow: Brows.arena, effect: Beffects.scortch, isHero: false),
  UnitCard(id: 20, imageFilename: 'Scorch 3.png', strength: 0,  battleRow: Brows.arena, effect: Beffects.scortch, isHero: false),
];


//! MONSTARZ------------------------------------
List <UnitCard> monstersUnits = [
  UnitCard.fromJson({ /* TODO */ }),
  UnitCard(id: 32, imageFilename: 'Arachas 2.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false,),
  UnitCard(id: 33, imageFilename: 'Arachas 3.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false,),
  UnitCard(id: 34, imageFilename: 'Arachas Behemoth.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.muster, isHero: false,),
  UnitCard(id: 35, imageFilename: 'Botchling.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false,),
  UnitCard(id: 36, imageFilename: 'Celaeno Harpy.png', strength: 2,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false,),
  UnitCard(id: 37, imageFilename: 'Cockatrice.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false,),
  UnitCard(id: 38, imageFilename: 'Crone Brewess.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false,),
  UnitCard(id: 39, imageFilename: 'Crone Weavess.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false,),
  UnitCard(id: 40, imageFilename: 'Crone Whispess.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false,),
  UnitCard(id: 41, imageFilename: 'Draug.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true,),
  UnitCard(id: 42, imageFilename: 'Earth Elemental.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 43, imageFilename: 'Endrega.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 44, imageFilename: 'Fiend.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 45, imageFilename: 'Fire Elemental.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 46, imageFilename: 'Foglet.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 47, imageFilename: 'Forktail.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 48, imageFilename: 'Frightener.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 49, imageFilename: 'Gargoyle.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 50, imageFilename: 'Ghoul 1.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 51, imageFilename: 'Ghoul 2.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 52, imageFilename: 'Ghoul 3.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 53, imageFilename: 'Grave Hag.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 54, imageFilename: 'Griffin.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 55, imageFilename: 'Harpy.png', strength: 2,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 56, imageFilename: 'Ice Giant.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 57, imageFilename: 'Imlerith.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true),
  UnitCard(id: 58, imageFilename: 'Kayran.png', strength: 8,  battleRow: Brows.agile,  effect: Beffects.morale, isHero: true), //! 2 EFFECTS!!!!
  UnitCard(id: 59, imageFilename: 'Leshen.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true),
  UnitCard(id: 60, imageFilename: 'Nekker 1.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 61, imageFilename: 'Nekker 2.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 62, imageFilename: 'Nekker 3.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 63, imageFilename: 'Plague Maiden.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 64, imageFilename: 'Vampire Bruxa.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 65, imageFilename: 'Vampire Ekimmara.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 66, imageFilename: 'Vampire Fleder.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 67, imageFilename: 'Vampire Garkain.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 68, imageFilename: 'Vampire Katakan.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 69, imageFilename: 'Werewolf.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 70, imageFilename: 'Wyvern.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
];



//! MILFGUARD ---------------------------------
List <UnitCard> nilfggardUnits = [
  UnitCard(id: 31, imageFilename: 'Albrich.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 32, imageFilename: 'Assire var Anahid.png', strength: 6,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 33, imageFilename: 'Black Infantry Archer 1.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 34, imageFilename: 'Black Infantry Archer 2.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 35, imageFilename: 'Cahir Mawr Dyffryn aep Ceallach.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 36, imageFilename: 'Cynthia.png', strength: 4,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 37, imageFilename: 'Etolian Auxiliary Archers 1.png', strength: 1,  battleRow: Brows.ranged,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 38, imageFilename: 'Etolian Auxiliary Archers 2.png', strength: 1,  battleRow: Brows.ranged,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 39, imageFilename: 'Fringilla Vigo.png', strength: 6,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 40, imageFilename: 'Heavy Zerrikanian Fire Scorpion.png', strength: 10,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 41, imageFilename: 'Impera Brigade Guard 1.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 42, imageFilename: 'Impera Brigade Guard 2.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 43, imageFilename: 'Impera Brigade Guard 3.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 44, imageFilename: 'Impera Brigade Guard 4.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 45, imageFilename: 'Letho of Gulet.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true),
  UnitCard(id: 46, imageFilename: 'Menno Coehoorn.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.medic, isHero: true),
  UnitCard(id: 47, imageFilename: 'Morteisen.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 48, imageFilename: 'Morvran Voorhis.png', strength: 10,  battleRow: Brows.siege,  effect: Beffects.none, isHero: true),
  UnitCard(id: 49, imageFilename: 'Nausicaa Cavalry Rider 1.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 50, imageFilename: 'Nausicaa Cavalry Rider 2.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 51, imageFilename: 'Nausicaa Cavalry Rider 3.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 52, imageFilename: 'Puttkammer.png', strength: 3,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 53, imageFilename: 'Rainfarn.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 54, imageFilename: 'Renuald aep Matsen.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 55, imageFilename: 'Rotten Mangonel.png', strength: 3,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 56, imageFilename: 'Shilard Fitz-Oesterlen.png', strength: 7,  battleRow: Brows.melee,  effect: Beffects.spy, isHero: false),
  UnitCard(id: 57, imageFilename: 'Siege Engineer.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 58, imageFilename: 'Siege Technician.png', strength: 0,  battleRow: Brows.siege,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 59, imageFilename: 'Stefan Skellen.png', strength: 9,  battleRow: Brows.melee,  effect: Beffects.spy, isHero: false),
  UnitCard(id: 60, imageFilename: 'Sweers.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 61, imageFilename: 'Tibor Eggebracht.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true),
  UnitCard(id: 62, imageFilename: 'Vanhemar.png', strength: 4,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 63, imageFilename: 'Vattier de Rideaux.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.spy, isHero: false),
  UnitCard(id: 64, imageFilename: 'Vreemde.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 65, imageFilename: 'Young Emissary 1.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 66, imageFilename: 'Young Emissary 2.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 67, imageFilename: 'Zerrikanian Fire Scorpion.png', strength: 5,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false)
];



//! Northern Realms----------------------
List <UnitCard> northernRealmsUnits = [
  UnitCard(id: 31, imageFilename: 'Ballista 1.png', strength: 6, battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 32, imageFilename: 'Ballista 2.png', strength: 6, battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 33, imageFilename: 'Blue Stripes Commando 1.png', strength: 4, battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 34, imageFilename: 'Blue Stripes Commando 2.png', strength: 4, battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 35, imageFilename: 'Blue Stripes Commando 3.png', strength: 4, battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 36, imageFilename: 'Catapult 1.png', strength: 8,  battleRow: Brows.siege,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 37, imageFilename: 'Catapult 2.png', strength: 8,  battleRow: Brows.siege,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 38, imageFilename: 'Crinfrid Reavers Dragon Hunter 1.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 39, imageFilename: 'Crinfrid Reavers Dragon Hunter 2.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 40, imageFilename: 'Crinfrid Reavers Dragon Hunter 3.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 41, imageFilename: 'Dethmold.png', strength: 6,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 42, imageFilename: 'Dun Banner Medic.png', strength: 5,  battleRow: Brows.siege,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 43, imageFilename: 'Esterad Thyssen.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true),
  UnitCard(id: 44, imageFilename: 'John Natalis.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true),
  UnitCard(id: 45, imageFilename: 'Kaedweni Siege Expert 1.png', strength: 1,  battleRow: Brows.siege,  effect: Beffects.morale, isHero: false),
  UnitCard(id: 46, imageFilename: 'Kaedweni Siege Expert 2.png', strength: 1,  battleRow: Brows.siege,  effect: Beffects.morale, isHero: false),
  UnitCard(id: 47, imageFilename: 'Kaedweni Siege Expert 3.png', strength: 1,  battleRow: Brows.siege,  effect: Beffects.morale, isHero: false),
  UnitCard(id: 48, imageFilename: 'Keira Metz.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 49, imageFilename: 'Philippa Eilhart.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true),
  UnitCard(id: 50, imageFilename: 'Poor Fucking Infantry 1.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),
  UnitCard(id: 51, imageFilename: 'Poor Fucking Infantry 2.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false), 
  UnitCard(id: 52, imageFilename: 'Poor Fucking Infantry 3.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.bond, isHero: false),   
  UnitCard(id: 53, imageFilename: 'Prince Stennis.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.spy, isHero: false),
  UnitCard(id: 54, imageFilename: 'Redanian Foot Soldier 1.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 55, imageFilename: 'Redanian Foot Soldier 2.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 56, imageFilename: 'Sabrina Glevissig.png', strength: 4,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 57, imageFilename: 'Sheldon Skaggs.png', strength: 4,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 58, imageFilename: 'Siege Tower 1.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 59, imageFilename: 'Siege Tower 2.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 60, imageFilename: 'Siegfried of Denesle.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 61, imageFilename: 'Sigismund Dijkstra.png', strength: 4,  battleRow: Brows.melee,  effect: Beffects.spy, isHero: false),
  UnitCard(id: 62, imageFilename: 'Sile de Tansarville.png', strength: 5,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 63, imageFilename: 'Thaler.png', strength: 1,  battleRow: Brows.siege,  effect: Beffects.spy, isHero: false),
  UnitCard(id: 64, imageFilename: 'Trebuchet 1.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 65, imageFilename: 'Trebuchet 2.png', strength: 6,  battleRow: Brows.siege,  effect: Beffects.none, isHero: false),
  UnitCard(id: 66, imageFilename: 'Vernon Roche.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.none, isHero: true),
  UnitCard(id: 67, imageFilename: 'Ves.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 68, imageFilename: 'Yarpen Zigrin.png', strength: 2,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
];


List <UnitCard> scoiataelUnits = [
UnitCard(id: 31, imageFilename: 'Barclay Els.png', strength: 6,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 32, imageFilename: 'Ciaran aep Easnillien.png', strength: 3,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 33, imageFilename: 'Dennis Cranmer.png', strength: 6,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 34, imageFilename: 'Dol Blathanna Archer.png', strength: 4,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 35, imageFilename: 'Dol Blathanna Scout 1.png', strength: 6,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 36, imageFilename: 'Dol Blathanna Scout 2.png', strength: 6,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 37, imageFilename: 'Dol Blathanna Scout 3.png', strength: 6,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 38, imageFilename: 'Dwarven Skirmisher 1.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 39, imageFilename: 'Dwarven Skirmisher 2.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 40, imageFilename: 'Dwarven Skirmisher 3.png', strength: 3,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 41, imageFilename: 'Eithne.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true),
  UnitCard(id: 42, imageFilename: 'Elven Skirmisher 1.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 43, imageFilename: 'Elven Skirmisher 2.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 44, imageFilename: 'Elven Skirmisher 3.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 45, imageFilename: 'Filavandrel aen Fidhail.png', strength: 6,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 46, imageFilename: 'Havekar Healer 1.png', strength: 0,  battleRow: Brows.ranged,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 47, imageFilename: 'Havekar Healer 2.png', strength: 0,  battleRow: Brows.ranged,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 48, imageFilename: 'Havekar Healer 3.png', strength: 0,  battleRow: Brows.ranged,  effect: Beffects.medic, isHero: false),
  UnitCard(id: 49, imageFilename: 'Havekar Smuggler 1.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 50, imageFilename: 'Havekar Smuggler 2.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 51, imageFilename: 'Havekar Smuggler 3.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.muster, isHero: false),
  UnitCard(id: 52, imageFilename: 'Ida Emean aep Sivney.png', strength: 6,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 53, imageFilename: 'Iorveth.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true),
  UnitCard(id: 54, imageFilename: 'Isengrim Faolitarna.png', strength: 10,  battleRow: Brows.melee,  effect: Beffects.morale, isHero: true),
  UnitCard(id: 55, imageFilename: 'Mahakaman Defender 1.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 56, imageFilename: 'Mahakaman Defender 2.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 57, imageFilename: 'Mahakaman Defender 3.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 58, imageFilename: 'Mahakaman Defender 4.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 59, imageFilename: 'Mahakaman Defender 5.png', strength: 5,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 60, imageFilename: 'Milva.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.morale, isHero: false),
  UnitCard(id: 61, imageFilename: 'Riordain.png', strength: 1,  battleRow: Brows.melee,  effect: Beffects.none, isHero: false),
  UnitCard(id: 62, imageFilename: 'Saesenthessis.png', strength: 10,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: true),
  UnitCard(id: 63, imageFilename: 'Toruviel.png', strength: 2,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 64, imageFilename: 'Vrihedd Brigade Recruit.png', strength: 4,  battleRow: Brows.ranged,  effect: Beffects.none, isHero: false),
  UnitCard(id: 65, imageFilename: 'Vrihedd Brigade Veteran 1.png', strength: 5,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 66, imageFilename: 'Vrihedd Brigade Veteran 2.png', strength: 5,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
  UnitCard(id: 67, imageFilename: 'Yaevinn.png', strength: 6,  battleRow: Brows.agile,  effect: Beffects.none, isHero: false),
];




List<LeaderCard> monstersLeaders = [
  LeaderCard(id: 0, cardName: 'Eredin Bringer of Death.png', leaderEffect: LeaderEffect.mon1,),
  LeaderCard(id: 1, cardName: 'Eredin Commander of the Red Riders.png', leaderEffect: LeaderEffect.mon2),
  LeaderCard(id: 2, cardName: 'Eredin Destroyer of Worlds.png', leaderEffect: LeaderEffect.mon3),
  LeaderCard(id: 3, cardName: 'Eredin King of the Wild Hunt.png', leaderEffect: LeaderEffect.mon4),
];


List<LeaderCard> northernRealmsLeaders = [
  LeaderCard(id: 0, cardName: 'Foltest King of Temeria.png', leaderEffect: LeaderEffect.nr1,),
  LeaderCard(id: 1, cardName: 'Foltest Lord Commander of the North.png ', leaderEffect: LeaderEffect.nr2),
  LeaderCard(id: 2, cardName: 'Foltest the Siegemaster.png', leaderEffect: LeaderEffect.nr3),
  LeaderCard(id: 3, cardName: 'Foltest the Steel-Forged.png', leaderEffect: LeaderEffect.nr4),
];


List<LeaderCard> nilfgaardLeaders = [
  LeaderCard(id: 0, cardName: 'Emhyr var Emreis Emperor of Nilfgaard.png', leaderEffect: LeaderEffect.nilf1),
  LeaderCard(id: 1, cardName: 'Emhyr var Emreis His Imperial Majesty.png', leaderEffect: LeaderEffect.nilf2),
  LeaderCard(id: 2, cardName: 'Emhyr var Emreis the Relentless.png', leaderEffect: LeaderEffect.nilf3),
  LeaderCard(id: 2, cardName: 'Emhyr var Emreis the White Flame.png', leaderEffect: LeaderEffect.nilf4),
];


List<LeaderCard> scoiataelLeaders = [
  LeaderCard(id: 0, cardName: 'Francesca Findabair Daisy of The Valle.png', leaderEffect: LeaderEffect.sco1),
  LeaderCard(id: 1, cardName: 'Francesca Findabair Pureblood Elf.png', leaderEffect: LeaderEffect.sco2),
  LeaderCard(id: 2, cardName: 'Francesca Findabair Queen of Dol Blathanna.png', leaderEffect: LeaderEffect.sco3),
  LeaderCard(id: 3, cardName: 'Francesca Findabair the Beautiful.png', leaderEffect: LeaderEffect.sco4),
];