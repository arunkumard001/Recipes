import 'dart:convert';

import 'package:get/get.dart';
import 'package:recipes/app/data/recipes.dart';
import 'package:recipes/app/modules/dashboard/data_model.dart';
import 'package:recipes/app/modules/dashboard/providers/data_provider.dart';
import 'package:renovation_core/core.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  getrecipe() async {
    RequestResponse response =
        await getFrappeModelController().getList(Recipe(), tableFields: {});
    if (response.isSuccess) {
      print(response.data[1]);
      return Recipe.fromJson(response);

      // If the document was successfully retrieve
    } else {
      // If the document was not retrieved
      print(response.error);
    }
  }

  delrecipe() async {}
  writerecipe() async {}
  updateecipe() async {}

  @override
  void onInit() {
    super.onInit();
    DataProvider().getData(2);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
