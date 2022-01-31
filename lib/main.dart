import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:recipes/app/modules/api/api.dart';
import 'package:renovation_core/core.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsBinding.instance;
  Renovation renovationInstance = Renovation();
  await renovationInstance.init(baseuri, useJWT: true);
  await renovationInstance.auth.checkLogin();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipies",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
