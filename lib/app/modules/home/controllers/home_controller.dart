import 'package:get/get.dart';
import 'package:renovation_core/core.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
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
