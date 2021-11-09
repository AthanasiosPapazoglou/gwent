// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CancelorSaveRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 27,
          child: Center(
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 12, color: Colors.red.shade600),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            border: Border.all(color: Colors.red.shade600),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          width: 48,
          height: 27,
          child: Center(
            child: Text(
              'Decks',
              style: TextStyle(fontSize: 12, color: Colors.green),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ],
    );
  }
}
