part of app.ui.home;

class OffersNearYouWidget extends StatelessWidget {
  const OffersNearYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15.0),
        const Padding(
          padding: AppPaddings.paddingHorizontal,
          child: Text(
            'Offers Near You',
            style: TextStyles.titleStyle,
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 180.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/png/banners/burgers_banner.png',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
