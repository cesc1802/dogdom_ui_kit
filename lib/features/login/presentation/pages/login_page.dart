import 'package:flutter/material.dart';

import '../../../../resources/dimens.dart';
import '../../../../themes/app_colors.dart';
import '../../../common/button_text.dart';
import '../../../common/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.darken,
            ),
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.gap_dp32,
            horizontal: Dimens.gap_dp16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildLogo(),
              CustomTextField(
                prefixIcon: DropdownButtonHideUnderline(
                    child: DropdownButton(
                  items: [],
                )),
              ),
              Gaps.vGap16,
              ButtonText(
                title: "Get Captcha",
                borderColor: AppColors.primaryColor,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Image _buildLogo() => Image.asset("assets/images/logo-light.png");
}
