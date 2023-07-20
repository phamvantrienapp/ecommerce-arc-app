part of app.ui.auth;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          labelText: 'Email',
          onChanged: (value) {},
        ),
        const SizedBox(height: 15.0),
        AppTextField(
          labelText: 'Password',
          onChanged: (value) {},
        ),
        const SizedBox(height: 15.0),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            child: Text(
              'Forgot Password?',
              style: TextStyles.contentStyle.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
