import 'package:recipes/app/data/cachemanager.dart';
import 'package:get/get.dart';
import 'package:renovation_core/core.dart';

class AuthenticationManager extends GetxController with CacheManager {
  final isLogged = false.obs;

  Future<void> logOut() async {
    await getFrappeAuthController().logout();
    isLogged.value = false;
    removeToken();
  }

  void login(String? token) async {
    token = await getFrappeAuthController().getCurrentToken();
    isLogged.value = true;
    print(token);
    //Token is cached
    await saveToken(token);
  }

  Future<void> checkLoginStatus() async {
    final checkvalue = await getFrappeAuthController().checkLogin();
    final token = getToken();
    getFrappeAuthController().getSession();
    if (checkvalue == true) {
      isLogged.value = true;
    }
  }
}
