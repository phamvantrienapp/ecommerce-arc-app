import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/material.dart';

class CommonButtonView extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool disalble;
  final Color color;
  final bool miniSize;
  final double radius;
  final TextStyle textStyle;

  const CommonButtonView({
    super.key,
    required this.title,
    required this.onPressed,
    this.disalble = false,
    this.color = UIColors.primaryButtonColor,
    this.miniSize = false,
    this.radius = 15.0,
    this.textStyle = TextStyles.titleButtonStyle,
  });

  @override
  Widget build(BuildContext context) {
    var fixedSize = const Size(double.infinity, 60.0);
    if (miniSize) {
      fixedSize = const Size(double.infinity, 50.0);
    }

    return ElevatedButton(
      onPressed: disalble ? null : onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: fixedSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        shadowColor: color,
        backgroundColor: color,
        foregroundColor: color,
        surfaceTintColor: color,
        disabledBackgroundColor: color.withOpacity(0.5),
        disabledForegroundColor: color.withOpacity(0.5),
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
