part of app.ui.home;

class NewAndTrendingWidget extends StatelessWidget {
  const NewAndTrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        const Padding(
          padding: AppPaddings.paddingHorizontal,
          child: Text(
            'New & Trending',
            style: TextStyles.titleStyle,
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 180.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/png/banners/burgers_banner.png',
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: UIColors.commonDark,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Image.asset(
                            'assets/images/png/logos/kfc.png',
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KFC',
                              style: TextStyles.contentStyle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              '1.2 mi',
                              style: TextStyles.subStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
