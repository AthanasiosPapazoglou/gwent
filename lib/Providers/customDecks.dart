// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/enums.dart';
import 'package:gwent/Card-Models/unit_model.dart';
import 'package:gwent/Card-Models/leader_model.dart';
import 'package:provider/provider.dart';

class CustomDecks extends ChangeNotifier{

  void refreshLists () {
    notifyListeners();
  }

  void resetGame () {
    notifyListeners();
  }

deckAssets playerDeckSelection = deckAssets.monsters;
deckAssets opponentDeckSelection = deckAssets.monsters;

int cardsRerolled = 0;

List <UnitCard> handCards = [];
List <UnitCard> playerMeleeList = [];
List <UnitCard> playerRangedList = [];
List <UnitCard> playerSiegeList = [];

List <UnitCard> opponentHand = [];
List <UnitCard> opponentMeleeList = [];
List <UnitCard> opponentRangedList = [];
List <UnitCard> opponentSiegeList = [];

String selectedMonstersLeader = 'Eredin Bringer of Death.png';
String selectedNilfggardLeader = 'Emhyr var Emreis Emperor of Nilfgaard.png';
String selectedNorthernRealmsLeader = 'Foltest King of Temeria.png';
String selectedScoiataelLeader = 'Francesca Findabair Daisy of The Valle.png';

void reconfigureLists (UnitCard cardToReposition, List<UnitCard> listToReconfigure) {
  int i = 0;
  bool endOfList = false;

  if(listToReconfigure.length == 0){
    listToReconfigure.add(cardToReposition);
  }
  else if(listToReconfigure.length == 1){
    listToReconfigure[0].id < cardToReposition.id ? listToReconfigure.add(cardToReposition) : listToReconfigure.insert(0, cardToReposition);
  } 
  else {
  while(listToReconfigure[i].id < cardToReposition.id && endOfList == false){
    i++;
    if (listToReconfigure.length == i+1){
      endOfList = true;
    }
  }
 endOfList ? listToReconfigure.add(cardToReposition) : listToReconfigure.insert(i, cardToReposition);
}
}



  
List <UnitCard> monstersUnitsUnselected = [
  UnitCard(id: 0, cardName: 'Biting Frost 1.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 1, cardName: 'Biting Frost 2.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 2, cardName: 'Biting Frost 3.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 3, cardName: 'Impenetrable Fog 1.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 4, cardName: 'Impenetrable Fog 2.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 5, cardName: 'Impenetrable Fog 3.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 6, cardName: 'Torrential Rain 1.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 7, cardName: 'Torrential Rain 2.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 8, cardName: 'Torrential Rain 3.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 9, cardName: 'Clear Weather 1.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 10, cardName: 'Clear Weather 2.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 11, cardName: 'Clear Weather 3.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 12, cardName: 'Commanders Horn 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 13, cardName: 'Commanders Horn 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 14, cardName: 'Commanders Horn 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 15, cardName: 'Decoy 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 16, cardName: 'Decoy 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 17, cardName: 'Decoy 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 18, cardName: 'Scorch 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 19, cardName: 'Scorch 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 20, cardName: 'Scorch 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 21, cardName: 'Cirilla Fiona Elen Rianno 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 22, cardName: 'Dandelion 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.horn, isHero: false,),
  UnitCard(id: 23, cardName: 'Emiel Regis Rohellec Terzieff 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 24, cardName: 'Geralt of Rivia 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 25, cardName: 'Mysterious Elf 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: true,),
  UnitCard(id: 26, cardName: 'Triss Merigold 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true,),
  UnitCard(id: 27, cardName: 'Vesemir 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 28, cardName: 'Villentretenmerth 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 29, cardName: 'Yennefer of Vengerberg 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: true,),
  UnitCard(id: 30, cardName: 'Zoltan Chivay 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 31, cardName: 'Arachas 1.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 32, cardName: 'Arachas 2.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 33, cardName: 'Arachas 3.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 34, cardName: 'Arachas Behemoth.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 35, cardName: 'Botchling.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 36, cardName: 'Celaeno Harpy.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false,),
  UnitCard(id: 37, cardName: 'Cockatrice.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false,),
  UnitCard(id: 38, cardName: 'Crone Brewess.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 39, cardName: 'Crone Weavess.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 40, cardName: 'Crone Whispess.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false,),
  UnitCard(id: 41, cardName: 'Draug.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 42, cardName: 'Earth Elemental.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 43, cardName: 'Endrega.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 44, cardName: 'Fiend.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 45, cardName: 'Fire Elemental.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 46, cardName: 'Foglet.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 47, cardName: 'Forktail.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 48, cardName: 'Frightener.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 49, cardName: 'Gargoyle.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 50, cardName: 'Ghoul 1.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 51, cardName: 'Ghoul 2.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 52, cardName: 'Ghoul 3.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 53, cardName: 'Grave Hag.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 54, cardName: 'Griffin.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 55, cardName: 'Harpy.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 56, cardName: 'Ice Giant.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 57, cardName: 'Imlerith.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true),
  UnitCard(id: 58, cardName: 'Kayran.png', strength: 8, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.morale, isHero: true), //! 2 EFFECTS!!!!
  UnitCard(id: 59, cardName: 'Leshen.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true),
  UnitCard(id: 60, cardName: 'Nekker 1.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 61, cardName: 'Nekker 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 62, cardName: 'Nekker 3.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 63, cardName: 'Plague Maiden.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 64, cardName: 'Vampire Bruxa.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 65, cardName: 'Vampire Ekimmara.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 66, cardName: 'Vampire Fleder.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 67, cardName: 'Vampire Garkain.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 68, cardName: 'Vampire Katakan.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 69, cardName: 'Werewolf.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 70, cardName: 'Wyvern.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),

];

List<UnitCard> monstersUnitsSelected =[];




List <UnitCard> nilfggardUnitsUnselected = [
  UnitCard(id: 0, cardName: 'Biting Frost 1.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 1, cardName: 'Biting Frost 2.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 2, cardName: 'Biting Frost 3.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 3, cardName: 'Impenetrable Fog 1.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 4, cardName: 'Impenetrable Fog 2.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 5, cardName: 'Impenetrable Fog 3.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 6, cardName: 'Torrential Rain 1.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 7, cardName: 'Torrential Rain 2.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 8, cardName: 'Torrential Rain 3.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 9, cardName: 'Clear Weather 1.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 10, cardName: 'Clear Weather 2.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 11, cardName: 'Clear Weather 3.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 12, cardName: 'Commanders Horn 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 13, cardName: 'Commanders Horn 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 14, cardName: 'Commanders Horn 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 15, cardName: 'Decoy 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 16, cardName: 'Decoy 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 17, cardName: 'Decoy 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 18, cardName: 'Scorch 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 19, cardName: 'Scorch 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 20, cardName: 'Scorch 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 21, cardName: 'Cirilla Fiona Elen Rianno 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 22, cardName: 'Dandelion 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.horn, isHero: false,),
  UnitCard(id: 23, cardName: 'Emiel Regis Rohellec Terzieff 2.png', weatherEffect: wEffects.none, strength: 5, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 24, cardName: 'Geralt of Rivia 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 25, cardName: 'Mysterious Elf 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: true,),
  UnitCard(id: 26, cardName: 'Triss Merigold 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true,),
  UnitCard(id: 27, cardName: 'Vesemir 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 28, cardName: 'Villentretenmerth 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 29, cardName: 'Yennefer of Vengerberg 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: true,),
  UnitCard(id: 30, cardName: 'Zoltan Chivay 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 31, cardName: 'Albrich.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 32, cardName: 'Assire var Anahid.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 33, cardName: 'Black Infantry Archer 1.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 34, cardName: 'Black Infantry Archer 2.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 35, cardName: 'Cahir Mawr Dyffryn aep Ceallach.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 36, cardName: 'Cynthia.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 37, cardName: 'Etolian Auxiliary Archers 1.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: false),
  UnitCard(id: 38, cardName: 'Etolian Auxiliary Archers 2.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: false),
  UnitCard(id: 39, cardName: 'Fringilla Vigo.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 40, cardName: 'Heavy Zerrikanian Fire Scorpion.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 41, cardName: 'Impera Brigade Guard 1.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 42, cardName: 'Impera Brigade Guard 2.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 43, cardName: 'Impera Brigade Guard 3.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 44, cardName: 'Impera Brigade Guard 4.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 45, cardName: 'Letho of Gulet.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true),
  UnitCard(id: 46, cardName: 'Menno Coehoorn.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.medic, isHero: true),
  UnitCard(id: 47, cardName: 'Morteisen.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 48, cardName: 'Morvran Voorhis.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: true),
  UnitCard(id: 49, cardName: 'Nausicaa Cavalry Rider 1.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 50, cardName: 'Nausicaa Cavalry Rider 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 51, cardName: 'Nausicaa Cavalry Rider 3.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 52, cardName: 'Puttkammer.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 53, cardName: 'Rainfarn.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 54, cardName: 'Renuald aep Matsen.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 55, cardName: 'Rotten Mangonel.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 56, cardName: 'Shilard Fitz-Oesterlen.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: false),
  UnitCard(id: 57, cardName: 'Siege Engineer.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 58, cardName: 'Siege Technician.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.medic, isHero: false),
  UnitCard(id: 59, cardName: 'Stefan Skellen.png', strength: 9, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: false),
  UnitCard(id: 60, cardName: 'Sweers.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 61, cardName: 'Tibor Eggebracht.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true),
  UnitCard(id: 62, cardName: 'Vanhemar.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 63, cardName: 'Vattier de Rideaux.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: false),
  UnitCard(id: 64, cardName: 'Vreemde.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 65, cardName: 'Young Emissary 1.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 66, cardName: 'Young Emissary 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 67, cardName: 'Zerrikanian Fire Scorpion.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false)
];

List<UnitCard> nilfggardUnitsSelected = [];




List <UnitCard> NorthernRealmsUnitsUnselected = [
  UnitCard(id: 0, cardName: 'Biting Frost 1.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 1, cardName: 'Biting Frost 2.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 2, cardName: 'Biting Frost 3.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 3, cardName: 'Impenetrable Fog 1.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 4, cardName: 'Impenetrable Fog 2.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 5, cardName: 'Impenetrable Fog 3.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 6, cardName: 'Torrential Rain 1.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 7, cardName: 'Torrential Rain 2.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 8, cardName: 'Torrential Rain 3.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 9, cardName: 'Clear Weather 1.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 10, cardName: 'Clear Weather 2.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 11, cardName: 'Clear Weather 3.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 12, cardName: 'Commanders Horn 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 13, cardName: 'Commanders Horn 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 14, cardName: 'Commanders Horn 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 15, cardName: 'Decoy 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 16, cardName: 'Decoy 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 17, cardName: 'Decoy 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 18, cardName: 'Scorch 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 19, cardName: 'Scorch 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 20, cardName: 'Scorch 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 21, cardName: 'Cirilla Fiona Elen Rianno 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 22, cardName: 'Dandelion 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.horn, isHero: false,),
  UnitCard(id: 23, cardName: 'Emiel Regis Rohellec Terzieff 2.png', weatherEffect: wEffects.none, strength: 5, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 24, cardName: 'Geralt of Rivia 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 25, cardName: 'Mysterious Elf 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: true,),
  UnitCard(id: 26, cardName: 'Triss Merigold 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true,),
  UnitCard(id: 27, cardName: 'Vesemir 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 28, cardName: 'Villentretenmerth 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 29, cardName: 'Yennefer of Vengerberg 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: true,),
  UnitCard(id: 30, cardName: 'Zoltan Chivay 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 31, cardName: 'Ballista 1.png', strength: 6, weatherEffect: wEffects.none ,battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 32, cardName: 'Ballista 2.png', strength: 6, weatherEffect: wEffects.none ,battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 33, cardName: 'Blue Stripes Commando 1.png', strength: 4, weatherEffect: wEffects.none ,battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 34, cardName: 'Blue Stripes Commando 2.png', strength: 4, weatherEffect: wEffects.none ,battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 35, cardName: 'Blue Stripes Commando 3.png', strength: 4, weatherEffect: wEffects.none ,battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 36, cardName: 'Catapult 1.png', strength: 8, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.bond, isHero: false),
  UnitCard(id: 37, cardName: 'Catapult 2.png', strength: 8, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.bond, isHero: false),
  UnitCard(id: 38, cardName: 'Crinfrid Reavers Dragon Hunter 1.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.bond, isHero: false),
  UnitCard(id: 39, cardName: 'Crinfrid Reavers Dragon Hunter 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.bond, isHero: false),
  UnitCard(id: 40, cardName: 'Crinfrid Reavers Dragon Hunter 3.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.bond, isHero: false),
  UnitCard(id: 41, cardName: 'Dethmold.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 42, cardName: 'Dun Banner Medic.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.medic, isHero: false),
  UnitCard(id: 43, cardName: 'Esterad Thyssen.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true),
  UnitCard(id: 44, cardName: 'John Natalis.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true),
  UnitCard(id: 45, cardName: 'Kaedweni Siege Expert 1.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.morale, isHero: false),
  UnitCard(id: 46, cardName: 'Kaedweni Siege Expert 2.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.morale, isHero: false),
  UnitCard(id: 47, cardName: 'Kaedweni Siege Expert 3.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.morale, isHero: false),
  UnitCard(id: 48, cardName: 'Keira Metz.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 49, cardName: 'Philippa Eilhart.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true),
  UnitCard(id: 50, cardName: 'Poor Fucking Infantry 1.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),
  UnitCard(id: 51, cardName: 'Poor Fucking Infantry 2.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false), 
  UnitCard(id: 52, cardName: 'Poor Fucking Infantry 3.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.bond, isHero: false),   
  UnitCard(id: 53, cardName: 'Prince Stennis.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: false),
  UnitCard(id: 54, cardName: 'Redanian Foot Soldier 1.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 55, cardName: 'Redanian Foot Soldier 2.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 56, cardName: 'Sabrina Glevissig.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 57, cardName: 'Sheldon Skaggs.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 58, cardName: 'Siege Tower 1.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 59, cardName: 'Siege Tower 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 60, cardName: 'Siegfried of Denesle.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 61, cardName: 'Sigismund Dijkstra.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: false),
  UnitCard(id: 62, cardName: 'Sile de Tansarville.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 63, cardName: 'Thaler.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.spy, isHero: false),
  UnitCard(id: 64, cardName: 'Trebuchet 1.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 65, cardName: 'Trebuchet 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.siege,  effect: beffects.none, isHero: false),
  UnitCard(id: 66, cardName: 'Vernon Roche.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true),
  UnitCard(id: 67, cardName: 'Ves.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 68, cardName: 'Yarpen Zigrin.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
];

List<UnitCard> NorthernRealmsUnitsSelected = [];




List <UnitCard> ScoiataelUnitsUnselected = [
  UnitCard(id: 0, cardName: 'Biting Frost 1.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 1, cardName: 'Biting Frost 2.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 2, cardName: 'Biting Frost 3.png', strength: 0, weatherEffect: wEffects.frost, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 3, cardName: 'Impenetrable Fog 1.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 4, cardName: 'Impenetrable Fog 2.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 5, cardName: 'Impenetrable Fog 3.png', strength: 0, weatherEffect: wEffects.fog, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 6, cardName: 'Torrential Rain 1.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 7, cardName: 'Torrential Rain 2.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 8, cardName: 'Torrential Rain 3.png', strength: 0, weatherEffect: wEffects.rain, battlerow: brows.arena, effect: beffects.none, isHero: false),
  UnitCard(id: 9, cardName: 'Clear Weather 1.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 10, cardName: 'Clear Weather 2.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 11, cardName: 'Clear Weather 3.png', strength: 0, weatherEffect: wEffects.clear, battlerow: brows.arena, effect: beffects.none, isHero: false,),
  UnitCard(id: 12, cardName: 'Commanders Horn 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 13, cardName: 'Commanders Horn 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 14, cardName: 'Commanders Horn 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.horn, isHero: false,),
  UnitCard(id: 15, cardName: 'Decoy 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 16, cardName: 'Decoy 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 17, cardName: 'Decoy 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.limitless, effect: beffects.decoy, isHero: false,),
  UnitCard(id: 18, cardName: 'Scorch 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 19, cardName: 'Scorch 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 20, cardName: 'Scorch 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.arena, effect: beffects.scortch, isHero: false),
  UnitCard(id: 21, cardName: 'Cirilla Fiona Elen Rianno 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 22, cardName: 'Dandelion 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.horn, isHero: false,),
  UnitCard(id: 23, cardName: 'Emiel Regis Rohellec Terzieff 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 24, cardName: 'Geralt of Rivia 2.png', strength: 15, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: true,),
  UnitCard(id: 25, cardName: 'Mysterious Elf 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.spy, isHero: true,),
  UnitCard(id: 26, cardName: 'Triss Merigold 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true,),
  UnitCard(id: 27, cardName: 'Vesemir 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 28, cardName: 'Villentretenmerth 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false,),
  UnitCard(id: 29, cardName: 'Yennefer of Vengerberg 2.png', strength: 7, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: true,),
  UnitCard(id: 30, cardName: 'Zoltan Chivay 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 31, cardName: 'Barclay Els.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 32, cardName: 'Ciaran aep Easnillien.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 33, cardName: 'Dennis Cranmer.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 34, cardName: 'Dol Blathanna Archer.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 35, cardName: 'Dol Blathanna Scout 1.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 36, cardName: 'Dol Blathanna Scout 2.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 37, cardName: 'Dol Blathanna Scout 3.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 38, cardName: 'Dwarven Skirmisher 1.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 39, cardName: 'Dwarven Skirmisher 2.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 40, cardName: 'Dwarven Skirmisher 3.png', strength: 3, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 41, cardName: 'Eithne.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true),
  UnitCard(id: 42, cardName: 'Elven Skirmisher 1.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.muster, isHero: false),
  UnitCard(id: 43, cardName: 'Elven Skirmisher 2.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.muster, isHero: false),
  UnitCard(id: 44, cardName: 'Elven Skirmisher 3.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.muster, isHero: false),
  UnitCard(id: 45, cardName: 'Filavandrel aen Fidhail.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 46, cardName: 'Havekar Healer 1.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: false),
  UnitCard(id: 47, cardName: 'Havekar Healer 2.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: false),
  UnitCard(id: 48, cardName: 'Havekar Healer 3.png', strength: 0, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.medic, isHero: false),
  UnitCard(id: 49, cardName: 'Havekar Smuggler 1.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 50, cardName: 'Havekar Smuggler 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 51, cardName: 'Havekar Smuggler 3.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.muster, isHero: false),
  UnitCard(id: 52, cardName: 'Ida Emean aep Sivney.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 53, cardName: 'Iorveth.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true),
  UnitCard(id: 54, cardName: 'Isengrim Faolitarna.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.morale, isHero: true),
  UnitCard(id: 55, cardName: 'Mahakaman Defender 1.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 56, cardName: 'Mahakaman Defender 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 57, cardName: 'Mahakaman Defender 3.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 58, cardName: 'Mahakaman Defender 4.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 59, cardName: 'Mahakaman Defender 5.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 60, cardName: 'Milva.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.morale, isHero: false),
  UnitCard(id: 61, cardName: 'Riordain.png', strength: 1, weatherEffect: wEffects.none, battlerow: brows.melee,  effect: beffects.none, isHero: false),
  UnitCard(id: 62, cardName: 'Saesenthessis.png', strength: 10, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: true),
  UnitCard(id: 63, cardName: 'Toruviel.png', strength: 2, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 64, cardName: 'Vrihedd Brigade Recruit.png', strength: 4, weatherEffect: wEffects.none, battlerow: brows.ranged,  effect: beffects.none, isHero: false),
  UnitCard(id: 65, cardName: 'Vrihedd Brigade Veteran 1.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 66, cardName: 'Vrihedd Brigade Veteran 2.png', strength: 5, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
  UnitCard(id: 67, cardName: 'Yaevinn.png', strength: 6, weatherEffect: wEffects.none, battlerow: brows.agile,  effect: beffects.none, isHero: false),
];

List<UnitCard> ScoiataelUnitsSelected = [];



List<LeaderCard> pMonstersLeaders = [
  LeaderCard(id: 0, cardName: 'Eredin Bringer of Death.png', leaderEffect: LeaderEffect.mon1,),
  LeaderCard(id: 1, cardName: 'Eredin Commander of the Red Riders.png', leaderEffect: LeaderEffect.mon2),
  LeaderCard(id: 2, cardName: 'Eredin Destroyer of Worlds.png', leaderEffect: LeaderEffect.mon3),
  LeaderCard(id: 3, cardName: 'Eredin King of the Wild Hunt.png', leaderEffect: LeaderEffect.mon4),
];

List<LeaderCard> pNilfgaardLeaders = [
  LeaderCard(id: 0, cardName: 'Emhyr var Emreis Emperor of Nilfgaard.png', leaderEffect: LeaderEffect.nilf1),
  LeaderCard(id: 1, cardName: 'Emhyr var Emreis His Imperial Majesty.png', leaderEffect: LeaderEffect.nilf2),
  LeaderCard(id: 2, cardName: 'Emhyr var Emreis the Relentless.png', leaderEffect: LeaderEffect.nilf3),
  LeaderCard(id: 2, cardName: 'Emhyr var Emreis the White Flame.png', leaderEffect: LeaderEffect.nilf4),
];

List<LeaderCard> pNorthernRealmsLeaders = [
  LeaderCard(id: 0, cardName: 'Foltest King of Temeria.png', leaderEffect: LeaderEffect.nr1,),
  LeaderCard(id: 1, cardName: 'Foltest Lord Commander of the North.png', leaderEffect: LeaderEffect.nr2),
  LeaderCard(id: 2, cardName: 'Foltest the Siegemaster.png', leaderEffect: LeaderEffect.nr3),
  LeaderCard(id: 3, cardName: 'Foltest the Steel-Forged.png', leaderEffect: LeaderEffect.nr4),
];


List<LeaderCard> pScoiataelLeaders = [
  LeaderCard(id: 0, cardName: 'Francesca Findabair Daisy of The Valle.png', leaderEffect: LeaderEffect.sco1),
  LeaderCard(id: 1, cardName: 'Francesca Findabair Pureblood Elf.png', leaderEffect: LeaderEffect.sco2),
  LeaderCard(id: 2, cardName: 'Francesca Findabair Queen of Dol Blathanna.png', leaderEffect: LeaderEffect.sco3),
  LeaderCard(id: 3, cardName: 'Francesca Findabair the Beautiful.png', leaderEffect: LeaderEffect.sco4),
];

}

