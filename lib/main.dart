// ignore_for_file: prefer_const_constructors
// HELLO WORLD!!!!

//TODO Diminish prop drill on gameplay screen
//TODO Refactor Provider so that we define the assets directories with the use of a methods from the provider
//TODO
import 'package:flutter/material.dart';
import 'Routes/route_generator.dart';
import 'Routes/route_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays([]);
  // print('print works');
  /* for(UnitCard unitCard in neutralUnits){

    } */
  /////////////
  runApp(Gwent());
}

class Gwent extends StatelessWidget {
  const Gwent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splash,
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
