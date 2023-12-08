import 'package:firebase_auth/firebase_auth.dart';


class AuthViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> loginUser(String email, String password) async {
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user;
    } catch (e) {
      print("Error logging in: $e");
      return null;
    }
  }

  Future<User?> registerUser(String email, String password) async {
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user;
    } catch (e) {
      print("Error registering user: $e");
      return null;
    }
  }



}