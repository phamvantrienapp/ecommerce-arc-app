part of app.ui.auth;

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          labelText: 'Full Name',
          onChanged: (value) {},
        ),
        const SizedBox(height: 15.0),
        AppTextField(
          labelText: 'Phone Number',
          onChanged: (value) {},
        ),
        const SizedBox(height: 15.0),
        AppTextField(
          labelText: 'Create Password',
          onChanged: (value) {},
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
