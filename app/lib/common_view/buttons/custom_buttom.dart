import 'package:flutter/material.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';

class CustomButton extends StatelessWidget {
  final bool disalble;
  final Color? disalbleColor;
  final String title;
  final Color? textColor;
  final TextStyle? textStyle;
  final Color color;
  final Widget? icon;
  final bool miniSize;
  final double radius;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color = UIColors.primaryButtonColor,
    this.radius = 15.0,
    this.miniSize = false,
    this.disalble = false,
    this.textColor,
    this.textStyle = TextStyles.titleButtonStyle,
    this.disalbleColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const width = double.infinity;
    final height = miniSize ? 50.0 : 60.0;

    Color? disalbleClr = disalbleColor;
    disalbleClr ??= color.withOpacity(0.5);

    Color isColor = color;
    if (disalble) isColor = disalbleClr;

    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: disalble ? null : onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isColor,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                icon!,
                const SizedBox(width: 10.0),
              ],
              Text(
                title,
                style: textStyle?.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
