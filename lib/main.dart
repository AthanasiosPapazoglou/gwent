// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(Gwent());

class Gwent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu();
   );
  }
}