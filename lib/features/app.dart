import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/route_name.dart';
import '../themes/app_colors.dart';
import 'common/button_text.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text("App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildButton(context, RouteNames.welcome, "Welcome Page"),
            SizedBox(height: 16),
            _buildButton(context, RouteNames.login, "Login Page"),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String routeName, String title) {
    return ButtonText(
      backgroundColor: AppColors.primaryColor,
      padding: EdgeInsets.zero,
      textStyle:
          Theme.of(context).textTheme.headline3!.apply(color: Colors.white),
      onPressed: () {
          Get.toNamed(routeName);
      },
      title: title,
    );
  }
}