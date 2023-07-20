part of app.ui.auth;

@RoutePage(name: 'AuthRoute')
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: const Scaffold(
        body: AuthBody(),
      ),
    );
  }
}
