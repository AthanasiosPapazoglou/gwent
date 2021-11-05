import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gwent/App-Utilities/constants.dart';
import 'package:gwent/App-Utilities/deckDataBase.dart';
import 'package:gwent/widgets/deck_grid_view.dart';

class CustomiseDeck extends StatefulWidget {
  
  final List listToRender;
  final String assetDirectory;

  CustomiseDeck({required this.listToRender, required this.assetDirectory});
  
  
  //String 

  @override
  _CustomiseDeckState createState() => _CustomiseDeckState();
}

class _CustomiseDeckState extends State<CustomiseDeck> {

  @override
  void initState(){
  super.initState();
  SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
  ]);
}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DeckGridView(listToRender: widget.listToRender, assetDirectory: widget.assetDirectory),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * (1/3),),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DeckGridView(listToRender: widget.listToRender, assetDirectory: widget.assetDirectory),
            ),
          ),
        ],
      ),
    );
    
    //DeckGridView(listToRender: widget.listToRender, assetDirectory: widget.assetDirectory);
  }
}