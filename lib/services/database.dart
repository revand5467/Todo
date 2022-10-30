import 'package:auth/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
}
