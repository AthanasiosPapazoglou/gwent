import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../Routes/route_name.dart';

class UpdaterScreen extends StatefulWidget {
  const UpdaterScreen({Key? key}) : super(key: key);

  @override
  State<UpdaterScreen> createState() => _UpdaterScreenState();
}

class _UpdaterScreenState extends State<UpdaterScreen> {
  int counter = 0;
  double downloadingProgressValue = 0;
  double extractingProgressValue = 0;
  /* double downloadingText = "Downloading..."; */
  void initState() {
    // TODO: implement initState
    downloadFiles();
    super.initState();
  }

  downloadFiles() async {
    Response response;
    var dio = Dio();
    Directory appDocDirectory = await getApplicationDocumentsDirectory();
    var status = await Permission.storage;
    if (!(await status.isGranted)) {
      await status.request();
    }
    // var status1 = await Permission.storage.request().isGranted;
    print(appDocDirectory.listSync());
    File file = File('${appDocDirectory.path}/packages.zip');
    if (await status.isGranted) {
      if (file.existsSync()) {
        if (!Directory('${appDocDirectory.path}/GameAssets').existsSync()) {
          setState(() {
            downloadingProgressValue = 1;
          });
          ZipFile.extractToDirectory(
              zipFile: file,
              destinationDir: appDocDirectory,
              onExtracting: (entry, progress) {
                setState(() {
                  extractingProgressValue = progress / 100;
                });
                return ZipFileOperation.includeItem;
              });
        }
        return;
      }
      await dio.downloadUri(
          Uri(
              host: '45.148.29.139',
              port: 8081,
              path: 'api/v1.0/fileManager/packages',
              scheme: 'http'),
          '${appDocDirectory.path}/packages.zip',
          deleteOnError: true, onReceiveProgress: (int received, int total) {
        double percentage = ((received / total));
        setState(() {
          downloadingProgressValue = percentage;
        });
        // print('aaaa $percentage - $counter');
        setState(() {
          counter = counter + 1;
        });
      }).then((value) {
        ZipFile.extractToDirectory(
                zipFile: file,
                destinationDir: appDocDirectory,
                onExtracting: (entry, progress) {
                  setState(() {
                    extractingProgressValue = progress / 100;
                  });
                  return ZipFileOperation.includeItem;
                })
            .then((value) => Navigator.of(context)
                .pushNamedAndRemoveUntil(RouteName.mainMenu, (route) => false));
      }).onError((error, stackTrace) {
        print('Errors $error');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: LinearPercentIndicator(
                barRadius: const Radius.circular(60),
                lineHeight: 20.0,
                clipLinearGradient: true,
                linearGradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 122, 145, 196),
                      Color.fromARGB(255, 3, 89, 250)
                    ]),
                animation: true,
                animateFromLastPercent: true,
                percent: downloadingProgressValue,
                center: Text(
                    "${(downloadingProgressValue * 100).toStringAsFixed(2)}%"),
              ),
            ),
            downloadingProgressValue < 1
                ? Container(
                    alignment: Alignment.center,
                    width: 180,
                    child: const Text('Downloading packages...'),
                  )
                : Container(
                    alignment: Alignment.center,
                    child: const Text('All packages have been downloaded!'),
                  ),
            if (downloadingProgressValue == 1)
              Container(
                alignment: Alignment.center,
                child: LinearPercentIndicator(
                  barRadius: const Radius.circular(60),
                  lineHeight: 20.0,
                  clipLinearGradient: true,
                  linearGradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 122, 145, 196),
                        Color.fromARGB(255, 3, 89, 250)
                      ]),
                  animation: true,
                  animateFromLastPercent: true,
                  percent: extractingProgressValue,
                  center: Text(
                      "${(extractingProgressValue * 100).toStringAsFixed(2)}%"),
                ),
              ),
            if (downloadingProgressValue == 1)
              Container(
                child: extractingProgressValue < 1
                    ? Container(
                        alignment: Alignment.center,
                        width: 180,
                        child: const Text('Extracting packages...'),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: const Text('All packages have been extracted!'),
                      ),
              )
          ],
        ),
      ),
    );
  }
}
