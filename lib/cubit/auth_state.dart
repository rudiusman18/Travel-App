part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// Untuk inisialisasi auth_cubit
class AuthInitial extends AuthState {}

// dijalankan ketika state auth berada di posisi loading
class AuthLoading extends AuthState {}

// dijalankan ketika state loading selesai dijalankan dan sistem melakukan proses pengambilan data
class AuthSuccess extends AuthState {
  final UserModel user;
  AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class AuthFailed extends AuthState {
  final String error;
  AuthFailed(this.error);
  @override
  List<Object> get props => [error];
}
