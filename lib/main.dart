import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inova_task/presentation/pages/splash/splash_view.dart';

import 'config/routes/app_routes.dart';
import 'config/themes/get_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Inova Task',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      initialRoute: SplashPage.id,
      getPages: AppRoutes.onGenerateRoutes(),
    );
  }
}
