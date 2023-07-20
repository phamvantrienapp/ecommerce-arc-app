part of app.ui.home;

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: AppPaddings.paddingHorizontal,
            sliver: SliverToBoxAdapter(
              child: OrderLocationsWidget(),
            ),
          ),
          SliverAppBar(
            pinned: true,
            toolbarHeight: 75.0,
            title: Center(child: HomeSearchWidget()),
            surfaceTintColor: Colors.white,
          ),
          SliverPadding(
            padding: AppPaddings.paddingHorizontal,
            sliver: SliverToBoxAdapter(
              child: HomeCategoriesWidget(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: SliverToBoxAdapter(
              child: OffersNearYouWidget(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: SliverToBoxAdapter(
              child: NewAndTrendingWidget(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: SliverToBoxAdapter(
              child: NewAndTrendingWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
