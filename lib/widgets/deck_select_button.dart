// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:gwent/widgets/deck_grid_view.dart';


class DeckButton extends StatelessWidget {
  final String imageURL;
  final String deckName;
  final Color deckColors;
  final String subtitleText; 

  DeckButton({
      required this.imageURL,
      required this.deckName,
      required this.deckColors,
      required this.subtitleText
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, DeckGridView.routeName);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        child: Card(
          elevation: 4,
          color: deckColors,
          child: ListTile(
            trailing: Image(
                height: 40,
                width: 22.5,
                image: AssetImage(imageURL),
              ),
             title: Text(
                deckName,
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
              subtitle: Text(
                subtitleText,
                style: TextStyle(fontSize: 16),
              ),
          ),
        ),
      ),
    );
  }
}
