part of app.ui.onboarding;

class OnboardingCarousel extends StatelessWidget {
  final CarouselController carouselController;

  const OnboardingCarousel({
    super.key,
    required this.carouselController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (previous, current) {
        return previous.data != current.data;
      },
      builder: (context, state) {
        final data = state.data;
        return Column(
          children: [
            BlocSelector<OnboardingCubit, OnboardingState, int>(
              selector: (state) {
                return state.selected;
              },
              builder: (context, selected) {
                return OnboardingCarouselSlider(
                  data: data,
                  selected: selected,
                  controller: carouselController,
                  onChange: (value) {
                    context.read<OnboardingCubit>().selectItem(value);
                  },
                );
              },
            ),
            const SizedBox(height: 13),
            BlocSelector<OnboardingCubit, OnboardingState, int>(
              selector: (state) {
                return state.selected;
              },
              builder: (context, selected) {
                return OnboardingIndicator(
                  data: data,
                  selected: selected,
                );
              },
            ),
            const SizedBox(height: 13),
          ],
        );
      },
    );
  }
}
