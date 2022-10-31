import 'package:auth/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<bool?> createNewUser(UserModel user) async {
    try {
      await _firestore
          .collection("users")
          .doc(user.id)
          .set({"name": user.name, "email": user.email});
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<Object> getUser(String uid) async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection("users").doc(uid).get();
      return UserModel.fromDocumentSnapshot(doc);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> addTodo(String content, String uid) async {
    try {
      await _firestore.collection("users").doc(uid).collection("todos").add({
        "date": DateFormat("hh:mm:ss a").format(DateTime.now()),
        "content": content,
        "done": false
      });
      print("created");
    } catch (e) {
      print(e);
      print("not updated");
      rethrow;
    }
  }
}
