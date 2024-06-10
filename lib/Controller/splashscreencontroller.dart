import 'package:get/get.dart';
import 'package:task2/View/loginpage.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed( const Duration(seconds: 2), () {
      Get.off(const LoginPage());
    });
  }
}