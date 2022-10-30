import 'package:auth/controllers/authcontroller.dart';
import 'package:auth/controllers/userController.dart';
import 'package:auth/screens/home.dart';
import 'package:auth/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user != null) {
          return home();
        } else {
          return login();
        }
      },
    );
  }
}
