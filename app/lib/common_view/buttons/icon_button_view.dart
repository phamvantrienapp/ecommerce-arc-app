import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/material.dart';

class IconButtonView extends StatelessWidget {
  final Widget icon;
  final bool? disable;
  final double? elevation;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledForegroundColor;
  final VoidCallback? onPressed;

  const IconButtonView({
    super.key,
    required this.icon,
    this.disable,
    this.elevation,
    this.borderRadius,
    this.backgroundColor,
    this.foregroundColor,
    this.disabledBackgroundColor,
    this.disabledForegroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final frimaryColor = backgroundColor ?? UIColors.commonGray;
    final frimaryDisableColor =
        disabledBackgroundColor ?? UIColors.commonGrayWhite;
    final frimaryBorderRadius = borderRadius ?? 5.0;

    return IconButton(
      onPressed: disable ?? false ? null : onPressed,
      icon: icon,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        // fixedSize: fixedSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(frimaryBorderRadius),
        ),
        // shadowColor: frimaryColor,
        backgroundColor: frimaryColor,
        // foregroundColor: frimaryDisableColor,
        // surfaceTintColor: frimaryColor,
        disabledBackgroundColor: frimaryDisableColor,
        // disabledForegroundColor: frimaryColor.withOpacity(0.5),
      ),
    );
  }
}
