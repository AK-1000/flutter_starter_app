import 'package:starter_app/domain/entities/user_entity.dart';

class UserModel {
  String id;

  UserModel({
    this.id = '',
  });

  UserEntity toEntity() {
    return UserEntity(
      id: id,
    );
  }
}
