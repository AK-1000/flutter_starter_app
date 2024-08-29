import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:starter_app/core/validators/validators.dart';
import 'package:starter_app/presentation/controllers/widget_controllers/snackbar_controller.dart';

class SignUpController extends GetxController {
  SignUpController({required FormValidators validators})
      : _validators = validators;

  final FormValidators _validators;
  final SnackBarController _snackbarController = Get.find<SnackBarController>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  Future<bool> _validateForm() async {
    String nameError = _validators.validateName(nameController.text);
    String emailError = _validators.emailValidator(emailController.text);
    String phoneError = await _validators.validateNumber(phoneController.text);
    String passwordError =
        _validators.validatePassword(passwordController.text);
    String confirmError = _validators.validateConfirmedPassword(
        passwordController.text, confirmController.text);

    if (nameError != '') {
      _snackbarController.showErrorSnackbar(message: nameError);
      return false;
    }

    if (emailError != '') {
      _snackbarController.showErrorSnackbar(message: emailError);
      return false;
    }

    if (phoneError != '') {
      _snackbarController.showErrorSnackbar(message: phoneError);
      return false;
    }

    if (passwordError != '') {
      _snackbarController.showErrorSnackbar(message: passwordError);
      return false;
    }

    if (confirmError != '') {
      _snackbarController.showErrorSnackbar(message: confirmError);
      return false;
    }

    return true;
  }

  void setLoading(bool value) {
    _isLoading.value = value;
  }

  Future<void> signUp() async {
    bool validatedForm = await _validateForm();
    if (validatedForm) {
      try {
        setLoading(true);
      } catch (e) {
        setLoading(false);
        _snackbarController.showErrorSnackbar(message: e.toString());
      }
    }
  }
}
