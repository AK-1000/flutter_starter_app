import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:starter_app/presentation/controllers/widget_controllers/dialogs_controller.dart';

void exitDialog() {
  Get.find<DialogsController>().showCancelOkDialog(
      title: 'Exit App',
      message: 'Are you sure you want to close HMS App ?',
      oKButtonPressed: () async {
        await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
      });
}
