part of app.ui.auth;

class AuthMenuBuilder extends StatelessWidget {
  const AuthMenuBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: UIColors.loginOptionColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: BlocSelector<AuthCubit, AuthState, AuthType>(
        selector: (state) {
          return state.type;
        },
        builder: (context, type) {
          Color loginColor;
          Color signUpColor;
          Color loginTextColor;
          Color signUpTextColor;

          if (type.isLogin) {
            loginColor = UIColors.loginOptionSelectedColor;
            signUpColor = Colors.transparent;
            loginTextColor = Colors.white;
            signUpTextColor = UIColors.loginOptionSelectedColor;
          } else {
            loginColor = Colors.transparent;
            signUpColor = UIColors.loginOptionSelectedColor;
            loginTextColor = UIColors.loginOptionSelectedColor;
            signUpTextColor = Colors.white;
          }

          return Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: 'Login',
                  color: loginColor,
                  radius: 25.0,
                  miniSize: true,
                  textColor: loginTextColor,
                  onTap: () {
                    context.read<AuthCubit>().changeType(AuthType.login);
                  },
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: CustomButton(
                  title: 'Sign Up',
                  color: signUpColor,
                  radius: 25.0,
                  miniSize: true,
                  textColor: signUpTextColor,
                  onTap: () {
                    context.read<AuthCubit>().changeType(AuthType.signUp);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
