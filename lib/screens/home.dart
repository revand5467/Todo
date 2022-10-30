import 'package:auth/controllers/authcontroller.dart';
import 'package:auth/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                controller.signOut();
                Get.to(login());
              },
              child: Text('Log out'))),
    );
  }
}
