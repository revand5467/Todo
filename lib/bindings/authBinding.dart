import 'package:auth/controllers/userController.dart';
import 'package:auth/models/user.dart';
import 'package:get/get.dart';
import '../controllers/authcontroller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut(() => UserController());
    //Get.lazyPut(() => UserModel());
  }
}
