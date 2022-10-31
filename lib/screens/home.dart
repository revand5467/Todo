import 'package:auth/controllers/authcontroller.dart';
import 'package:auth/controllers/userController.dart';
import 'package:auth/models/user.dart';
import 'package:auth/screens/login.dart';
import 'package:auth/services/database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends GetWidget<AuthController> {
//  UserController _userData = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    String id = "";
    final TextEditingController _todoController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
            title: Text("Home"),
            leading: IconButton(
                icon: Icon(Icons.bubble_chart_sharp),
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                })),
        body: Column(children: [
          GetX<UserController>(builder: (_) {
            if (_.user.id != null) {
              id = _.user.id.trim();
              print(id);
              return Text(_.user.id);
            }
            return Text("Loading");
          }),
          SizedBox(height: 20),
          Text("Add Todo Here:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Card(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(child: TextFormField(controller: _todoController)),
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        if (_todoController.text != "") {
                          print(_todoController);
                          Database().addTodo(_todoController.text, id);
                          _todoController.clear();
                        }
                      })
                ],
              )),
          ElevatedButton(
              onPressed: () {
                controller.signOut();
                Get.to(() => Login());
              },
              child: Text('Log out')),
        ]));
  }
}
