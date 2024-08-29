import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogsController extends GetxController {
  void showYesNoDialog(
      {String? title = 'Confirm', String? message = 'Are you sure?'}) {
    Get.defaultDialog(
      title: title!,
      content: Text(message!),
      actions: [
        TextButton(
          child: const Text('No'),
          onPressed: () {
            Get.back(result: false); // return false when 'No' is pressed
          },
        ),
        TextButton(
          child: const Text('Yes'),
          onPressed: () {
            Get.back(result: true); // return true when 'Yes' is pressed
          },
        ),
      ],
    );
  }

  void showCancelOkDialog({
    String? title = 'Alert',
    String? message = 'Proceed with this action?',
    void Function()? oKButtonPressed,
  }) {
    Get.defaultDialog(
      radius: 10,
      title: title!,
      content: Text(
        message!,
        style: const TextStyle(letterSpacing: 1),
        textAlign: TextAlign.justify,
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Get.back(result: false); // return false when 'Cancel' is pressed
          },
        ),
        TextButton(
          onPressed: oKButtonPressed ??
              () {
                Get.back(result: true);
              },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
