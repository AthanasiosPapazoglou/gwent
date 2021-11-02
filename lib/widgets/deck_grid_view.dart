import 'package:flutter/material.dart';

class DeckGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),

       itemBuilder: (ctx, i) =>
      
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(),
    );
  }
}