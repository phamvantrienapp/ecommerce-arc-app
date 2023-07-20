import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/material.dart';

class TextButtonView extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const TextButtonView({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        fixedSize: const Size(double.infinity, 60.0),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
      ),
      child: Text(
        title,
        style: TextStyles.titleButtonStyle.copyWith(
          color: UIColors.primaryTextColor,
        ),
      ),
    );
  }
}
