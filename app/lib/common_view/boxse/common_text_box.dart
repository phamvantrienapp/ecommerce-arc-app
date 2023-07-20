import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/widgets.dart';

class CommonTextBox extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final Icon? icon;
  final double radius;
  const CommonTextBox({
    super.key,
    this.icon,
    required this.title,
    this.radius = 10.0,
    this.color = UIColors.primaryTextBoxColor,
    this.textColor = UIColors.primaryTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        child: Row(
          children: [
            icon ?? const SizedBox.shrink(),
            Text(
              title,
              style: TextStyles.contentStyle.copyWith(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
