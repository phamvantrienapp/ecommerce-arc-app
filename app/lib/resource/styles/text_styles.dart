import 'package:ecommerce_app/resource/dimens/dimens.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static const headerStyle = TextStyle(
    color: UIColors.primaryTitleColor,
    fontSize: bigText,
    fontWeight: FontWeight.w600,
  );

  static const titleStyle = TextStyle(
    color: UIColors.primaryTitleColor,
    fontSize: titleText,
    fontWeight: FontWeight.w700,
  );

  static const titleButtonStyle = TextStyle(
    color: UIColors.primaryTextButtonColor,
    fontSize: normalText,
    fontWeight: FontWeight.w600,
  );

  static const contentStyle = TextStyle(
    color: UIColors.primaryTitleColor,
    fontSize: normalText,
    fontWeight: FontWeight.w400,
  );

  static const subStyle = TextStyle(
    color: UIColors.primaryTextColor,
    fontSize: smallText,
  );
}
