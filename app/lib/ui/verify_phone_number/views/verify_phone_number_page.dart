part of app.ui.verify_phone_number;

@RoutePage(name: 'VerifyPhoneNumberRoute')
class VerifyPhoneNumberPage extends StatelessWidget {
  const VerifyPhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: const CommonAppBar(
        title: 'Back',
      ),
      child: Padding(
        padding: AppPaddings.paddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verify Phone Number',
              style: TextStyles.headerStyle,
            ),
            const Text(
              'We have sent you a 6 digit code. Please enter here to Verify your Number.',
              style: TextStyles.subStyle,
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: UIColors.primaryTextFieldColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 20.0,
                    ),
                    child: Text(
                      '+84 398 363 865',
                      style: TextStyles.contentStyle,
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                FloatingActionButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  mini: true,
                  elevation: 0.0,
                  backgroundColor: UIColors.actionButtonBackgroundColor,
                  child: const Icon(
                    Icons.edit,
                    color: UIColors.actionButtonColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(15.0),
                fieldWidth: 49,
                fieldHeight: 58,
                activeColor: UIColors.primaryTextFieldColor,
                activeFillColor: UIColors.primaryTextFieldColor,
                selectedColor: UIColors.primaryTextFieldColor,
                selectedFillColor: UIColors.primaryTextFieldColor,
                inactiveColor: UIColors.primaryTextFieldColor,
                inactiveFillColor: UIColors.primaryTextFieldColor,
              ),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              cursorColor: UIColors.primaryTextColor,
              // errorAnimationController: errorController,
              // controller: textEditingController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Didn’t Receive Code? ',
                  style: TextStyles.contentStyle,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Get a New one',
                    style: TextStyles.contentStyle.copyWith(
                      color: Colors.pink,
                      decorationColor: Colors.pink,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            CustomButton(
              title: 'Verify and Continue',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
