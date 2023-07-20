part of app.shared_view.another_login;

class AnotherLoginBox extends StatelessWidget {
  final String path;
  final VoidCallback? onTap;

  const AnotherLoginBox({
    super.key,
    required this.path,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.0,
      height: 70.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: UIColors.primaryTextColor.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Image.asset(path),
        ),
      ),
    );
  }
}
