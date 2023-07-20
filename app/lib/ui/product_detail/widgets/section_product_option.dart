part of app.ui.product_detail;

class SectionProductOption extends StatelessWidget {
  const SectionProductOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.0,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: UIColors.commonGrayWhite,
            ),
            child: Padding(
              padding: AppPaddings.paddingHorizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Side Item',
                    style: TextStyles.titleStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        'REQUIRED',
                        style: TextStyles.contentStyle.copyWith(
                          color: UIColors.commonGreen,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      const Icon(
                        Icons.remove_circle,
                        size: 35.0,
                        color: UIColors.commonGray,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final selected = index == 1;
            return ItemProductOption(selected: selected);
          },
        ),
      ],
    );
  }
}
