part of app.ui.search;

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      // appBar: const CommonAppBar(),
      child: Padding(
        padding: AppPaddings.paddingHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'Search',
            //       style: TextStyles.headerStyle,
            //     ),
            //     CommonTextBox(
            //       color: UIColors.commonPinkOP,
            //       textColor: UIColors.commonPink,
            //       title: 'Filter',
            //     ),
            //   ],
            // ),
            AppTextField(
              hintText: 'Search Food, Restaurant etc.',
              autofocus: true,
              prefixIcon: GestureDetector(
                onTap: () => context.router.pop(),
                child: const Icon(Icons.navigate_before),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recently Searched',
                  style: TextStyles.titleStyle,
                ),
                Text(
                  'CLEAR ALL',
                  style: TextStyles.subStyle.copyWith(
                    color: UIColors.commonPink,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const SearchItemWidget();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
