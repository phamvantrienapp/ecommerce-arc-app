part of app.ui.search;

class SearchItemWidget extends StatelessWidget {
  final String? data;
  const SearchItemWidget({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.router.push(const ProductDetailRoute());
      },
      leading: Image.asset(
        'assets/images/png/search_item.png',
      ),
      title: const Text(
        'BBQ Chicken Burger',
        style: TextStyles.contentStyle,
      ),
      subtitle: Text(
        'KFC',
        style: TextStyles.subStyle.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: const Icon(
        Icons.navigate_next,
      ),
      visualDensity: const VisualDensity(vertical: 3),
    );
  }
}
