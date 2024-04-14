import 'package:flutter/material.dart';
import 'package:rayshardenov_s_devochki2/core/utils/size_utils.dart';
import 'package:rayshardenov_s_devochki2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterRed500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.red500,
        fontSize: 18.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displayMediumBlack90001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get displayMediumMedium => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeRobotoBlack90001 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
