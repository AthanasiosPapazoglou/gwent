// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names, prefer_const_constructors
import 'package:flutter/material.dart';

class DeckButton extends StatelessWidget {
  final String imageURL;

  DeckButton({required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Image(
        image: AssetImage(imageURL),
      ),
    );
  }
}
