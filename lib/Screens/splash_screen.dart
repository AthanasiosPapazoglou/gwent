import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../Routes/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var dio = Dio();
  bool isNice = false;
  @override
  void initState() {
    // TODO: implement initState
    // downloadFiles();
    super.initState();
  }

  checkPackagesAndRedirect() {
    Future.delayed(Duration(milliseconds: 100), () async {
      Directory appDocDirectory = await getApplicationDocumentsDirectory();
      File file = File('${appDocDirectory.path}/packages.zip');
      // file.deleteSync();
      if (!file.existsSync() ||
          !Directory('${appDocDirectory.path}/GameAssets').existsSync()) {
        Navigator.of(context).pushNamedAndRemoveUntil(
            RouteName.packageUpdater, (route) => false);
      } else {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(RouteName.mainMenu, (route) => false);
      }
    });
  }

  var colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  var colorizeTextStyle = const TextStyle(
      fontSize: 50.0, fontFamily: 'Horizon', fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff32799C),
            Color(0xff3F90AD),
            Color(0xff63D4DE),
          ],
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'GWENT',
              speed: Duration(milliseconds: 500),
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          repeatForever: false,
          isRepeatingAnimation: false,
          onFinished: checkPackagesAndRedirect,
        ),
      ),
    ));
  }
}
