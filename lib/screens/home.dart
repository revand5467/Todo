import 'package:auth/controllers/authcontroller.dart';
import 'package:auth/controllers/userController.dart';
import 'package:auth/models/user.dart';
import 'package:auth/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends GetWidget<AuthController> {
//  UserController _userData = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(children: [
          GetX<UserController>(builder: (_) {
            if (_.user.email != null) {
              return Text(_.user.email);
            }
            return Text("Loading");
          }),
          ElevatedButton(
              onPressed: () {
                controller.signOut();
                Get.to(() => login());
              },
              child: Text('Log out')),
        ]));
  }
}
