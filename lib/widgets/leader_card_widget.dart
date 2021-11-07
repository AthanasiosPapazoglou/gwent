import 'package:flutter/material.dart';

class LeaderCardWidget extends StatelessWidget {
  
  final String cardName;
  final String assetDirectory;

  LeaderCardWidget({
    required this.cardName,
    required this.assetDirectory
    });


  @override
  Widget build(BuildContext context) {
    return Image(
      width: MediaQuery.of(context).size.width * 0.1,
      image: AssetImage('$assetDirectory$cardName'),
    );
  }
}