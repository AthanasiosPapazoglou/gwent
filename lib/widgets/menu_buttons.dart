// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MenuButtons extends StatelessWidget {
  final String buttonTitle;
  final String routeToNavigateAt;

  MenuButtons({required this.buttonTitle, required this.routeToNavigateAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      child: Card(
        elevation: 5,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, routeToNavigateAt);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber[50],
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                buttonTitle,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black54
                  ),
              ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}
