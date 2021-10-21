// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('GameAssets/Back/Back.png'),
            fit: BoxFit.cover
          ),
        ),
        child: null,
      ),
    );
  }
}
