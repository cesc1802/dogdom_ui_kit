import 'package:flutter/material.dart';

import '../../resources/dimens.dart';
import '../../themes/app_colors.dart';

class ButtonText extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle? textStyle;
  final Function()? onPressed;
  final EdgeInsets? padding;
  final Color? borderColor;

  const ButtonText({
    Key? key,
    required this.title,
    this.backgroundColor,
    this.textColor,
    this.textStyle,
    this.padding,
    this.borderColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shape = borderColor != null
        ? MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.gap_dp24),
              side: BorderSide(
                width: 1,
                color: borderColor!,
              ),
            ),
          )
        : null;

    final defaultTextTheme = Theme.of(context).textTheme.headline4;

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          padding ?? const EdgeInsets.all(Dimens.gap_dp16),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            if (backgroundColor == null)
              return AppColors.primaryColor;

            return backgroundColor!;
          }
          return backgroundColor;
        }),
        foregroundColor: MaterialStateProperty.all(textColor),
        shape: shape,
      ),
      child: Text(
        title,
        style: textStyle ??
            defaultTextTheme!.copyWith(
              color: backgroundColor != null
                  ? AppColors.primaryColor
                  : Colors.white,
              fontSize: 17,
            ),
      ),
    );
  }
}