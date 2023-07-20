import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/navigation/app_router/app_router.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:flutter/material.dart';

class CategoryBoxItem extends StatelessWidget {
  final String path;
  final String title;
  final Color color;

  const CategoryBoxItem({
    super.key,
    required this.path,
    required this.title,
    this.color = UIColors.categoryBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pushAll([const CategoryRoute()]);
      },
      child: SizedBox(
        width: 100.0,
        height: 100.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(75.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(path),
              const SizedBox(height: 5.0),
              SizedBox(
                width: 90.0,
                child: Text(
                  title,
                  style: TextStyles.contentStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
