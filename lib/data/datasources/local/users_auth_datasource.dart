import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter_app/app/constants.dart';
import 'package:starter_app/data/models/user_model.dart';

abstract class UsersAuthDataSource {
  void saveUser(UserModel user);
  String getUserId();
  bool isLoggedIn();
  void deleteUser();
}

class UsersAuthDataSourceImpl implements UsersAuthDataSource {
  UsersAuthDataSourceImpl({required SharedPreferences prefs}) : _prefs = prefs;
  final SharedPreferences _prefs;
  @override
  void saveUser(UserModel user) {
    _prefs.setString(userIdLocalPath, user.id);
    _prefs.setBool(userAuthStausPath, true);
  }

  @override
  void deleteUser() {
    _prefs.remove(userIdLocalPath);
    _prefs.setBool(userAuthStausPath, false);
  }

  @override
  bool isLoggedIn() {
    return _prefs.getBool(userAuthStausPath) ?? false;
  }

  @override
  String getUserId() {
    return _prefs.getString(userIdLocalPath) ?? '';
  }

  
}
