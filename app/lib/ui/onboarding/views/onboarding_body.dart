part of app.ui.onboarding;

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.paddingAll,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OnboardingCarousel(
                      carouselController: carouselController,
                    ),
                    const Text(
                      'Wide range of Food Categories & more',
                      style: TextStyles.headerStyle,
                    ),
                    const SizedBox(height: 13),
                    const Text(
                      '''Browse through our extensive list of restaurants and dishes, and when you're ready to order, simply add your desired items to your cart and checkout. It's that easy!''',
                      style: TextStyles.subStyle,
                    ),
                    const SizedBox(height: 13),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButtonView(
                    onPressed: () {
                      context.router.replaceAll([const AuthRoute()]);
                    },
                    title: 'Skips',
                  ),
                ),
                BlocSelector<OnboardingCubit, OnboardingState, int>(
                  selector: (state) {
                    return state.selected;
                  },
                  builder: (context, selected) {
                    return Expanded(
                      child: CommonButtonView(
                        title: 'Next',
                        onPressed: () {
                          final onboarding = context.read<OnboardingCubit>();
                          final isSelected = onboarding.state.selected;
                          final isFinal = onboarding.state.data.length - 1;

                          if (isSelected >= isFinal) {
                            context.router.replaceAll([const AuthRoute()]);
                          } else {
                            final value = selected + 1;
                            onboarding.selectItem(value);
                            carouselController.nextPage();
                          }
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
