import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes/app/data/authencationmanager.dart';
import 'package:recipes/app/data/loginresponse.dart';
import 'package:recipes/app/data/signuprequestmodel.dart';
import 'package:recipes/app/modules/api/api.dart';
import 'package:recipes/app/routes/app_pages.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:renovation_core/core.dart';

class SigninController extends GetxController {
  TextEditingController signupfirstname = TextEditingController();
  TextEditingController signuplastname = TextEditingController();
  TextEditingController signupemail = TextEditingController();
  TextEditingController signuppassword = TextEditingController();

  signin(firstname, lastname, email, password) async {
    var auth = Get.put(AuthenticationManager());
    final renovationInstance = Renovation();
    Map<String, dynamic> data = {
      "first_name": firstname,
      "last_name": lastname,
      "email": email,
      "password": password,
    };

    final signup =
        await renovationInstance.call({"cmd": signupcmd, "args": data});
    if (signup.isSuccess) {
      final loginResponse =
          await getFrappeAuthController().login(email, password);

      if (loginResponse.isSuccess) {
        auth.login(loginResponse.data.token);
        LoginResponseModel.fromJson(loginResponse.data.rawSession);
        Get.offNamedUntil(Routes.DASHBOARD, (route) => false);
      }
    }
    if (signup.error != null) {
      printError();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.dispose();
    signupfirstname;
    signuplastname;
    signupemail;
  }
}
