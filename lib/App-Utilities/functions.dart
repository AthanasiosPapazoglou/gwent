import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void landscapeMode(){
   SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
}

void portraitMode(){
   SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
}