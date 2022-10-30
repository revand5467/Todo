import 'package:auth/controllers/userController.dart';
import 'package:get/get.dart';
import '../controllers/authcontroller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut(() => UserController());
  }
}
