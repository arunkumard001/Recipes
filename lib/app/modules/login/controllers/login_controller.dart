import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:recipes/app/data/authencationmanager.dart';
import 'package:recipes/app/data/cachemanager.dart';
import 'package:recipes/app/data/loginmodel.dart';
import 'package:recipes/app/data/loginresponse.dart';
import 'package:recipes/app/modules/dashboard/views/dashboard_view.dart';
import 'package:recipes/app/routes/app_pages.dart';
import 'package:renovation_core/core.dart';

class LoginController extends GetxController {
  var auth = Get.put(AuthenticationManager());
  TextEditingController Loginemail = TextEditingController();
  TextEditingController Loginpassword = TextEditingController();
  Login(String Email, String password) async {
    final loginResponse =
        await getFrappeAuthController().login(Email, password);

    if (loginResponse.isSuccess) {
      auth.login(loginResponse.data.token);
      LoginResponseModel.fromJson(loginResponse.data.rawSession);
      Get.offNamedUntil(Routes.DASHBOARD, (route) => false);
    }
    if (loginResponse.httpCode == 401) {
      Get.snackbar("Incorrect Password", "Please enter correct Password",
          snackPosition: SnackPosition.BOTTOM);
    }
    if (loginResponse.httpCode == 404) {
      Get.snackbar("User disabled or missing", "please contact the admin",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  final count = 0.obs;
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
  void increment() => count.value++;
}
