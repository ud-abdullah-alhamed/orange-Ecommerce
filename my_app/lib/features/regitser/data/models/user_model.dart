import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/features/regitser/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final String? id;
  const UserModel(
      {this.id,
      required super.email,
      required super.password,
      required super.imageUrl});

  tojason() {
    return {
      "Email": email,
      "Password": password,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    final data = documentSnapshot.data()!;
    return UserModel(
      id: documentSnapshot.id,
      email: data["Email"],
      password: data["Password"],
      imageUrl: data["imageUrl"],
    );
  }
}
