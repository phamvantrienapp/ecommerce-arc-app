part of app.ui.auth;

class AuthBodyBuilder extends StatelessWidget {
  const AuthBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      builder: (context, authType) {
        Widget child = const LoginPage();
        if (authType.isSignUp) child = const SignUpPage();
        return child;
      },
    );
  }
}
