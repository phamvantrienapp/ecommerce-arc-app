part of app.ui.home;

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const SearchRoute());
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: UIColors.commonGrayWhite,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: SizedBox(
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppIcons.search),
                const SizedBox(width: 10.0),
                Text(
                  'Search Food, Restauran etc.',
                  style: TextStyles.contentStyle.copyWith(
                    color: UIColors.commonDark,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
