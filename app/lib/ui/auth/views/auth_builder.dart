part of app.ui.auth;

class AuthBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    AuthType authType,
  ) builder;

  const AuthBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      buildWhen: (previous, current) {
        return previous.type != current.type;
      },
      builder: (context, state) {
        return builder(context, state.type);
      },
    );
  }
}
