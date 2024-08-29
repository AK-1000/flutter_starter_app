import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarController extends GetxController {
  void showSuccessSnackbar(
      {String? title = 'Success', String? message = 'Completed Successfully'}) {
    Get.snackbar(
      title!, // title
      message!, // message
      icon: const Icon(Icons.check_circle, color: Colors.green),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.white,
      colorText: Colors.green,
      duration: const Duration(seconds: 3),
      dismissDirection: DismissDirection.horizontal,
    );
  }

  void showErrorSnackbar(
      {String? title = 'Error', String? message = 'Something went wrong !'}) {
    Get.snackbar(
      title!, // title
      message!, // message
      icon: Icon(Icons.error, color: Colors.red.shade600),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.grey.shade200,
      colorText: Colors.red.shade600,
      duration: const Duration(seconds: 3),
      shouldIconPulse: false,
      dismissDirection: DismissDirection.horizontal,
    );
  }

}
