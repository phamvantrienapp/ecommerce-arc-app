part of app.ui.home;

class OrderLocationsWidget extends StatelessWidget {
  const OrderLocationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CommonTextBox(
                icon: Icon(
                  Icons.place_outlined,
                  size: 20.0,
                  color: UIColors.actionButtonColor,
                ),
                color: UIColors.actionButtonBackgroundColor,
                textColor: UIColors.actionButtonColor,
                title: ' 32 Kingston Ln 101 La.',
              ),
              SizedBox(width: 15.0),
              CommonTextBox(
                icon: Icon(
                  Icons.query_builder,
                  size: 20.0,
                  color: UIColors.actionButtonColor,
                ),
                color: UIColors.actionButtonBackgroundColor,
                textColor: UIColors.actionButtonColor,
                title: ' Order now',
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0),
        const Text(
          'Good Evening Lusia',
          style: TextStyles.headerStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
