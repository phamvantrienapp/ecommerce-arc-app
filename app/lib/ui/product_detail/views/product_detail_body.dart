part of app.ui.product_detail;

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        actions: [
          Padding(
            padding: AppPaddings.paddingHorizontal,
            child: Image.asset(AppIcons.cart),
          ),
        ],
      ),
      persistentFooterButtons: [
        const SizedBox(
          height: 2.0,
        ),
        Row(
          children: [
            Row(
              children: [
                BlocSelector<ProductDetailCubit, ProductDetailState, int>(
                  selector: (state) {
                    return state.quantity;
                  },
                  builder: (context, quantity) {
                    return IconButtonView(
                      disable: quantity <= 1,
                      onPressed: () {
                        context.read<ProductDetailCubit>().decrementQuantity();
                      },
                      backgroundColor: UIColors.commonPink,
                      disabledBackgroundColor: UIColors.commonPinkOP,
                      icon: const Icon(Icons.remove),
                    );
                  },
                ),
                BlocSelector<ProductDetailCubit, ProductDetailState, int>(
                  selector: (state) {
                    return state.quantity;
                  },
                  builder: (context, quantity) {
                    return SizedBox(
                      width: 35.0,
                      child: Text(
                        '$quantity',
                        style: TextStyles.contentStyle,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
                BlocSelector<ProductDetailCubit, ProductDetailState, int>(
                  selector: (state) {
                    return state.quantity;
                  },
                  builder: (context, quantity) {
                    return IconButtonView(
                      onPressed: () {
                        context.read<ProductDetailCubit>().incrementQuantity();
                      },
                      backgroundColor: UIColors.commonPink,
                      disabledBackgroundColor: UIColors.commonPinkOP,
                      icon: const Icon(Icons.add),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: CustomButton(
                onTap: () {},
                radius: 5,
                color: UIColors.commonBlack,
                title: 'Add to Cart',
                icon: const Icon(
                  Icons.shopping_basket,
                  color: UIColors.commonBlue,
                ),
              ),
            ),
          ],
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPaddings.paddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.productDetail),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Western BBQ Cheeseburger Meal',
                    style: TextStyles.headerStyle,
                  ),
                  const SizedBox(height: 5.0),
                  const Row(
                    children: [
                      Text(
                        '340-400 Calo',
                        style: TextStyles.subStyle,
                      ),
                      SizedBox(width: 5.0),
                      Icon(Icons.info_outline),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const SectionProductOption(),
            const SectionProductOption(),
          ],
        ),
      ),
    );
  }
}
