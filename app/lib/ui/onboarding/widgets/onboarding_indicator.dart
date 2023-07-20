part of app.ui.onboarding;

class OnboardingIndicator extends StatelessWidget {
  final List<String> data;
  final int selected;

  const OnboardingIndicator({
    super.key,
    required this.data,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Icon(
              Icons.brightness_1,
              size: 14.0,
              color: i == selected
                  ? UIColors.indicatorActiveColor
                  : UIColors.indicatorColor,
            ),
          ),
      ],
    );
  }
}
