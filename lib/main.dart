import 'package:dogdom_ui_kit/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/app.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: AppThemes.appLightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.ROOT,
      getPages: AppPages.authorizedPages,
      home: App(),
    );
  }
}
