import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:starter_app/core/validators/validators.dart';
import 'package:starter_app/presentation/controllers/widget_controllers/snackbar_controller.dart';

class SignInController extends GetxController {
  SignInController({
    required FormValidators validators,
  }) : _validators = validators;

  final FormValidators _validators;
  final _snackbarController = Get.find<SnackBarController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  bool _validateForm() {
    String emailError = _validators.emailValidator(emailController.text);
    String passwordError =
        _validators.validatePassword(passwordController.text);

    if (emailError != '') {
      _snackbarController.showErrorSnackbar(message: emailError);
      return false;
    }

    if (passwordError != '') {
      _snackbarController.showErrorSnackbar(message: passwordError);
      return false;
    }

    return true;
  }

  void setLoading(bool value) {
    _isLoading.value = value;
  }

  Future<void> signIn() async {
    bool validateForm = _validateForm();
    if (validateForm) {
      try {
        _isLoading.value = true;
      } catch (e) {
        _isLoading.value = false;
        _snackbarController.showErrorSnackbar(message: e.toString());
      }
    }
  }
}
