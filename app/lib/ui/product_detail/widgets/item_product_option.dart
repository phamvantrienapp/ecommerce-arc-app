part of app.ui.product_detail;

class ItemProductOption extends StatelessWidget {
  final String? data;
  final bool selected;

  const ItemProductOption({
    super.key,
    this.data,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    Widget trailing = const Icon(
      Icons.radio_button_unchecked,
      color: UIColors.commonDark,
      size: 35.0,
    );

    if (selected) {
      trailing = const Icon(
        Icons.radio_button_checked,
        color: UIColors.commonPink,
        size: 35.0,
      );
    }
    return ListTile(
      onTap: () {},
      leading: Image.asset(
        AppImages.productOption,
      ),
      title: const Text(
        'Medium Fries',
        style: TextStyles.contentStyle,
      ),
      trailing: trailing,
      contentPadding: AppPaddings.paddingHorizontal,
      visualDensity: const VisualDensity(vertical: 3),
    );
  }
}
