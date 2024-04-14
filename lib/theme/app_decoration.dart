import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green700,
      );
  static BoxDecoration get fillGreen300 => BoxDecoration(
        color: appTheme.green300,
      );
  static BoxDecoration get fillGreen40001 => BoxDecoration(
        color: appTheme.green40001,
      );
  static BoxDecoration get fillGreen500 => BoxDecoration(
        color: appTheme.green500,
      );
  static BoxDecoration get fillGreen600 => BoxDecoration(
        color: appTheme.green600,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
