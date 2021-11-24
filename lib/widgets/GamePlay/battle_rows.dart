// import 'package:flutter/material.dart';
// import 'package:gwent/App-Utilities/enums.dart';
// import 'package:gwent/Card-Models/unit_model.dart';
// import 'package:provider/provider.dart';
// import 'package:gwent/Providers/customDecks.dart';

// class BattleRowView extends StatelessWidget {

//   RenderRow rowToRender;

//   BattleRowView({required this.rowToRender});


//   @override
//   Widget build(BuildContext context) {

//     final customDecks = Provider.of<CustomDecks>(context);
//     List<UnitCard>selectedBattleRow;

//     switch (rowToRender){
      
//       case RenderRow.melee:
//       selectedBattleRow = customDecks.playerMeleeList;
//       break;

//       case RenderRow.ranged:
//       selectedBattleRow = customDecks.playerRangedList;
//       break;

//       case RenderRow.siege:
//       selectedBattleRow = customDecks.playerSiegeList;
//       break;

//     }


//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       padding: const EdgeInsets.all(8.0),
//       itemCount: selectedBattleRow.length,
//       itemBuilder: (ctx, i) {
        
//       }
//   }
// }