// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gwent/App-Utilities/functions.dart';

class MenuButtons extends StatelessWidget {
  final String buttonTitle;
  final String routeToNavigateAt;
  final bool isEligibleToPlay;

  MenuButtons(
      {@required this.buttonTitle,
      @required this.routeToNavigateAt,
      this.isEligibleToPlay});

  @override
  Widget build(BuildContext context) {
    //TODO fix this properly
    return GestureDetector(
      onTap: (buttonTitle == 'PLAY GAME')
          ? (isEligibleToPlay ?? false)
              ? () {
                  Navigator.pushNamed(context, routeToNavigateAt);
                  landscapeMode();
                }
              : () {
                  final snackBar = SnackBar(
                    content: const Text(
                        'You need to setup your decks before playing'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
          : () {
              Navigator.pushNamed(context, routeToNavigateAt);
            },
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.amber[50],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black54,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 30, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
