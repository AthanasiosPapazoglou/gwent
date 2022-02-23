import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void landscapeMode() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
}

void portraitMode() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

Future<Directory> getFilesStorageDir() {
  return getApplicationDocumentsDirectory();
}
