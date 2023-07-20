part of app.ui.auth;

class AuthButtonBuider extends StatelessWidget {
  const AuthButtonBuider({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      builder: (context, authType) {
        Widget child = CustomButton(
          title: 'Login',
          disalble: true,
          miniSize: false,
          onTap: () {},
        );

        if (authType.isSignUp) {
          child = CustomButton(
            title: 'Sign Up',
            disalble: true,
            miniSize: false,
            onTap: () {},
          );
        }

        return child;
      },
    );
  }
}
