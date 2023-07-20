part of app.ui.category;

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Padding(
        padding: AppPaddings.paddingHorizontal,
        child: Column(
          children: [
            const Text(
              'All Category',
              style: TextStyles.headerStyle,
            ),
            const SizedBox(height: 15.0),
            AppTextField(
              hintText: 'Search by Category',
              prefixIcon: Image.asset(
                AppIcons.search,
                color: UIColors.commonBlue,
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: GridView.builder(
                itemCount: listCategories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                ),
                itemBuilder: (context, index) {
                  final path = listCategories[index];
                  return CategoryBoxItem(
                    path: path,
                    title: 'Title',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
