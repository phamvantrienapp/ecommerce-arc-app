part of app.ui.onboarding;

class OnboardingCarouselSlider extends StatelessWidget {
  final int selected;
  final List<String> data;
  final CarouselController controller;
  final Function? onChange;

  const OnboardingCarouselSlider({
    super.key,
    required this.data,
    required this.controller,
    required this.selected,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        initialPage: selected,
        aspectRatio: 1,
        viewportFraction: 1,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          onChange != null ? onChange!(index) : null;
        },
      ),
      carouselController: controller,
      itemCount: data.length,
      itemBuilder: (context, index, realIndex) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: UIColors.primaryImageColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SizedBox(
            width: double.infinity,
            height: 400.0,
            child: Center(
              child: Text('$index'),
            ),
          ),
        );
      },
    );
  }
}
