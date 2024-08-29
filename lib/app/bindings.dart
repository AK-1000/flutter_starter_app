import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter_app/core/validators/validators.dart';
import 'package:starter_app/data/datasources/local/users_auth_datasource.dart';
import 'package:starter_app/data/repositories/user_data_repository_impl.dart';
import 'package:starter_app/domain/repositories/user_data_repository.dart';
import 'package:starter_app/domain/use_cases/local/user_data_use_case.dart';
import 'package:starter_app/presentation/controllers/widget_controllers/dialogs_controller.dart';
import 'package:starter_app/presentation/controllers/widget_controllers/snackbar_controller.dart';

class AppBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    await initServices();
    initDataSources();
    initRepositories();
    initUseCases();
    initControllers();
  }

  Future<void> initServices() async {
    //Shared Prefences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Get.lazyPut<SharedPreferences>(() => prefs, fenix: true);

    //FormValidators
    Get.lazyPut<FormValidators>(() => FormValidators(), fenix: true);
  }

  void initDataSources() {
    Get.lazyPut<UsersAuthDataSource>(
      () => UsersAuthDataSourceImpl(
        prefs: Get.find<SharedPreferences>(),
      ),
      fenix: true,
    );
  }

  void initRepositories() {
    Get.lazyPut<UserDataRepository>(
      () => UserDataRepositoryImpl(
          usersAuthDataSource: Get.find<UsersAuthDataSource>()),
      fenix: true,
    );
  }

  void initUseCases() {
    Get.lazyPut<UserDataUseCase>(
      () => UserDataUseCaseImpl(
        userDataRepository: Get.find<UserDataRepository>(),
      ),
      fenix: true,
    );
  }

  void initControllers() {
    Get.lazyPut<SnackBarController>(() => SnackBarController(), fenix: true);
    Get.lazyPut<DialogsController>(() => DialogsController(), fenix: true);
  }
}
