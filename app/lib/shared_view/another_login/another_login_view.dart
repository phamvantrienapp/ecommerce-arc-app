part of app.shared_view.another_login;

class AnotherLoginView extends StatelessWidget {
  const AnotherLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Or Login Using:',
              style: TextStyles.contentStyle,
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Divider(
                color: UIColors.primaryTextColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30.0),
        Row(
          children: [
            AnotherLoginBox(
              path: 'assets/images/png/google.png',
              onTap: () {},
            ),
            const SizedBox(width: 20.0),
            AnotherLoginBox(
              path: 'assets/images/png/apple.png',
              onTap: () {},
            ),
            const SizedBox(width: 20.0),
            AnotherLoginBox(
              path: 'assets/images/png/facebook.png',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
