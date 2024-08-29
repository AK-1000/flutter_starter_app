import 'package:starter_app/data/datasources/local/users_auth_datasource.dart';
import 'package:starter_app/domain/repositories/user_data_repository.dart';

class UserDataRepositoryImpl implements UserDataRepository {
  UserDataRepositoryImpl({required UsersAuthDataSource usersAuthDataSource})
      : _usersAuthDataSource = usersAuthDataSource;
  final UsersAuthDataSource _usersAuthDataSource;
}
