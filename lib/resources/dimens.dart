import 'package:flutter/material.dart';

import 'constants.dart';

class Dimens {
  static const double gap_dp0 = 0;
  static const double gap_dp2 = 2;
  static const double gap_dp4 = 4;
  static const double gap_dp6 = 6;
  static const double gap_dp8 = 8;
  static const double gap_dp12 = 12;
  static const double gap_dp16 = 16;
  static const double gap_dp24 = 24;
  static const double gap_dp28 = 28;
  static const double gap_dp32 = 32;
}

class Gaps {
  /// horizontal
  static const Widget hGap4 = SizedBox(width: Dimens.gap_dp4);
  static const Widget hGap8 = SizedBox(width: Dimens.gap_dp8);
  static const Widget hGap12 = SizedBox(width: Dimens.gap_dp12);
  static const Widget hGap16 = SizedBox(width: Dimens.gap_dp16);
  static const Widget hGap24 = SizedBox(width: Dimens.gap_dp24);
  static const Widget hGap32 = SizedBox(width: Dimens.gap_dp32);

  /// vertical
  static const Widget vGap0 = SizedBox(height: Dimens.gap_dp0);
  static const Widget vGap2 = SizedBox(height: Dimens.gap_dp2);
  static const Widget vGap4 = SizedBox(height: Dimens.gap_dp4);
  static const Widget vGap8 = SizedBox(height: Dimens.gap_dp8);
  static const Widget vGap12 = SizedBox(height: Dimens.gap_dp12);
  static const Widget vGap16 = SizedBox(height: Dimens.gap_dp16);
  static const Widget vGap24 = SizedBox(height: Dimens.gap_dp24);
  static const Widget vGap28 = SizedBox(height: Dimens.gap_dp28);
  static const Widget vGap32 = SizedBox(height: Dimens.gap_dp32);
  static const Widget vGapAvoidNav = SizedBox(height: kBottomNavHeight);
}
