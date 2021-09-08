import 'package:dogdom_ui_kit/features/app.dart';
import 'package:dogdom_ui_kit/features/login/presentation/pages/login_page.dart';
import 'package:dogdom_ui_kit/features/splash/presentation/splash_page.dart';
import 'package:dogdom_ui_kit/routes/route_name.dart';
import 'package:get/get.dart';

class AppPages {
  static const ROOT = RouteNames.root;

  static final List<GetPage> authorizedPages = [
    GetPage(
      name: RouteNames.root,
      page: () => App(),
    ),
    GetPage(
      name: RouteNames.welcome,
      page: () => SplashPage(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => LoginPage(),
    )
  ];
}
