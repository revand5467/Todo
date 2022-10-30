import 'package:auth/controllers/authcontroller.dart';
import 'package:auth/screens/home.dart';
import 'package:auth/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                    controller: passwordController,
                  ),
                  ElevatedButton(
                      child: Text("login"),
                      onPressed: () {
                        controller.login(
                            emailController.text, passwordController.text);
                        if (controller.verified) {
                          Get.to(home());
                        }
                      }),
                  TextButton(
                      child: Text("signup"),
                      onPressed: () {
                        Get.to(SignUp());
                      }),
                ])),
      ),
    );
  }
}
