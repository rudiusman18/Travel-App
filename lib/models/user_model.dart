import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  //?? Mengapa variabel pada UserModel menggunakan final? Alasannya adalah karena final adalah variabel yang tidak dapat dirubah sekalinya memiliki nilai (kecuali dilakukan build ulang dari awal). Alasan diberi tanda final adalah karena data pada class ini tidak mungkin berubah (karena merupakan data user).

  final String userId;
  final String email;
  final String name;
  final String hobby;
  final int balance;
  final String password;

  UserModel({
    required this.userId,
    required this.email,
    required this.name,
    required this.password,
    this.hobby = '',
    this.balance = 0,
  });

// ?? berfungsi untuk memberikan value dalam variabel kepada Equatable
  @override
  List<Object?> get props => [userId, email, name, hobby, balance];
}
