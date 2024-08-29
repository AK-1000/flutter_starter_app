import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter_app/app/bindings.dart';
import 'package:starter_app/app/routes.dart';
import 'package:starter_app/app/theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await AppBindings().dependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      theme: lightMode,
      initialRoute: Routes.initial,
    );
  }
}
