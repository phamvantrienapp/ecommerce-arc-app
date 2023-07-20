part of app.ui.home;

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30.0),
        // const Text(
        //   'Categories',
        //   style: TextStyles.titleStyle,
        // ),
        // const SizedBox(height: 15.0),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
          ),
          itemBuilder: (context, index) {
            if (index == 5) {
              return SizedBox(
                width: 100.0,
                height: 100.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: UIColors.commonBlue,
                    ),
                    borderRadius: BorderRadius.circular(75.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_forward,
                        size: 25.0,
                        color: UIColors.commonBlue,
                      ),
                      Text(
                        'See all',
                        style: TextStyles.subStyle.copyWith(
                          color: UIColors.commonBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

            final path = listCategories[index];

            return CategoryBoxItem(
              path: path,
              title: 'Banh mi',
            );
          },
        ),
      ],
    );
  }
}
