import 'package:flutter/material.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final double elevation;
  final List<Widget> actions;
  final Color? backgroundColor;

  const CommonAppBar({
    super.key,
    this.title = '',
    this.leading,
    this.elevation = 0,
    this.backgroundColor,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyles.contentStyle,
      ),
      leading: leading,
      actions: actions,
      elevation: elevation,
      centerTitle: false,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
