import 'dart:convert';

import 'package:get/get.dart';
import 'package:recipes/app/data/recipes.dart';
import 'package:recipes/app/modules/api/api.dart';
import 'package:renovation_core/auth.dart';
import 'package:renovation_core/core.dart';
import 'package:renovation_core/model.dart';
import 'package:renovation_core/perm.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  getrecipe() async {
    var response = getFrappeAuthController().checkLogin();
    print(response);
  }

  delrecipe() async {}
  writerecipe() async {}
  updateecipe() async {}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
