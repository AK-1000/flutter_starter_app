import 'package:starter_app/data/models/user_model.dart';

class UserEntity {
  String id;

  UserEntity({
    this.id = '',
  });

  UserModel toModel() {
    return UserModel(
      id: id,
    );
  }
}
