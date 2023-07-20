part of app.ui.auth;

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: AppPaddings.paddingAll,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome!',
                      style: TextStyles.headerStyle,
                    ),
                    Text(
                      'Sign up or Login to your account',
                      style: TextStyles.subStyle,
                    ),
                    SizedBox(height: 30.0),
                    AuthMenuBuilder(),
                    SizedBox(height: 30.0),
                    AuthBodyBuilder(),
                    SizedBox(height: 30.0),
                    AnotherLoginView(),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
            AuthButtonBuider(),
          ],
        ),
      ),
    );
  }
}
