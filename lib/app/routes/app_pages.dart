import 'package:get/get.dart';

import 'package:recipes/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:recipes/app/modules/dashboard/views/dashboard_view.dart';
import 'package:recipes/app/modules/detailpage/bindings/detailpage_binding.dart';
import 'package:recipes/app/modules/detailpage/views/detailpage_view.dart';
import 'package:recipes/app/modules/home/bindings/home_binding.dart';
import 'package:recipes/app/modules/home/views/home_view.dart';
import 'package:recipes/app/modules/login/bindings/login_binding.dart';
import 'package:recipes/app/modules/login/views/login_view.dart';
import 'package:recipes/app/modules/signin/bindings/signin_binding.dart';
import 'package:recipes/app/modules/signin/views/signin_view.dart';
import 'package:recipes/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:recipes/app/modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.DETAILPAGE,
      page: () => DetailpageView(),
      binding: DetailpageBinding(),
    ),
  ];
}
