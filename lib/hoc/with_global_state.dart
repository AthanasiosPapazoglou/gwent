import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gwent/controllers/glogal_state_controller.dart';

abstract class WithGlobalState {
  final GlobalStateController _globalStateController = Get.find();

  GlobalStateController get globalStateController => _globalStateController;
}
