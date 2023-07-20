import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/ui/account/account.dart';
import 'package:ecommerce_app/ui/category/category.dart';
import 'package:ecommerce_app/ui/home/home.dart';
import 'package:ecommerce_app/ui/auth/auth.dart';
import 'package:ecommerce_app/ui/location/location.dart';
import 'package:ecommerce_app/ui/notification/notification.dart';
import 'package:ecommerce_app/ui/onboarding/onboarding.dart';
import 'package:ecommerce_app/ui/product_detail/product_detail.dart';
import 'package:ecommerce_app/ui/search/search.dart';
import 'package:ecommerce_app/ui/verify_phone_number/verify_phone_number.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    /// routes go here
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: VerifyPhoneNumberRoute.page),
    AutoRoute(
      // initial: true,
      page: HomeRoute.page,
    ),
    CustomRoute(
      page: SearchRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    AutoRoute(page: AccountRoute.page),
    AutoRoute(page: LocationRoute.page),
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(page: NotificationRoute.page),
    AutoRoute(
      initial: true,
      page: ProductDetailRoute.page,
    ),
  ];
}
