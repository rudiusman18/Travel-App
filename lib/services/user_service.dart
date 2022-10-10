import 'package:airplane_mobile/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class UserService {
  // Melakukan inisialisasi collection pada firebase (terlebih dahulu harus membuat collection dengan nama lalu value ada FirebaseFirestore.instance.collection('disesuaikan_dengan_nama_collection_pada firestore_yang_diinginkan'))
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      // Mengambil data sesuai dengan user id tertentu kemudian dilakukan set data berupa email, name, hobby, dan balance sesuai dengan value user data yang ada pada file auth_service
      _userReference.doc(user.userId).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }
}
