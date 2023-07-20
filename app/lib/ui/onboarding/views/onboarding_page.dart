part of app.ui.onboarding;

@RoutePage(name: 'OnboardingRoute')
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final onboardingCubit = OnboardingCubit();
        onboardingCubit.updateData(_array);
        return onboardingCubit;
      },
      child: const Scaffold(
        body: OnboardingBody(),
      ),
    );
  }
}
