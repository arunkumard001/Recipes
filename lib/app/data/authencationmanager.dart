import 'package:recipes/app/data/cachemanager.dart';
import 'package:get/get.dart';
import 'package:recipes/app/modules/dashboard/views/dashboard_view.dart';
import 'package:recipes/app/modules/login/views/login_view.dart';
import 'package:renovation_core/core.dart';

class AuthenticationManager extends GetxController with CacheManager {
  final isLogged = getFrappeAuthController().isLoggedIn.obs;

  void logOut() {
    getFrappeAuthController().logout();
    isLogged.value = false;
    removeToken();
  }

  void login(String? token) async {
    isLogged.value = true;
    print(token);
    //Token is cached
    await saveToken(token);
  }

  void checkLoginStatus() {
    getFrappeAuthController().checkLogin();
    final token = getToken();
    if (getFrappeAuthController().checkLogin() == true) {
      DashboardView();
    }
    if (getFrappeAuthController().checkLogin() == false) {
      LoginView();
    }
  }
}
