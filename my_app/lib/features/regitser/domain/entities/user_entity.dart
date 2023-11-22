import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String password;
  final String email;
  final String? imageUrl;

  const UserEntity(
      {required this.email, required this.password, required this.imageUrl});

  @override
  List<Object?> get props => [password, email, imageUrl];
}
