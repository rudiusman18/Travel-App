import 'package:airplane_mobile/models/user_model.dart';
import 'package:airplane_mobile/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String name,
    required String password,
    String hobby = '',
  }) async {
    try {
      // Membuat akun kedalam firebase auth
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
        userId: userCredential.user!.uid,
        email: email,
        name: name,
        password: password,
        hobby: hobby,
        balance: 280000000,
      );
      // memberikan value variable user kedalam variabel user pada function setUser class UserService
      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
