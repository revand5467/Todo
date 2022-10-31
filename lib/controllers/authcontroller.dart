import 'package:auth/controllers/userController.dart';
import 'package:auth/models/user.dart';
import 'package:auth/screens/home.dart';
import 'package:auth/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../screens/login.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  FirebaseAuth _auth = FirebaseAuth.instance;
  late Rx<User?> _firebaseUser;
  Rx<bool> verified = false.obs;
  String get user => _firebaseUser.value!.uid;

  void onReady() {
    super.onReady();
    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.userChanges());
    ever(_firebaseUser, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => Login());
    } else {
      Get.offAll(() => home());
    }
  }

  void onInit() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        print(user.uid);
      }
    });
  }

  void createUser(String name, String email, String password) async {
    try {
      UserCredential _authResult = await _auth.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      verified.value = true;
      UserModel _user = UserModel(_authResult.user!.uid, name, email);
      var hi = await Database().createNewUser(_user);
      if (hi!) {
        Get.find<UserController>().user = _user;
        Get.back();
      }
    } catch (e) {
      print(e.toString());
      Get.snackbar(
        "Error creating user",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void login(String email, String password) async {
    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      verified.value = true;
      Get.find<UserController>().user =
          await Database().getUser(_authResult.user!.uid) as UserModel;
    } catch (e) {
      print(e.toString());
      Get.snackbar("Error login user", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
      Get.find<UserController>().clear();
    } catch (e) {
      print(e.toString());
      Get.snackbar("Error logout user", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
