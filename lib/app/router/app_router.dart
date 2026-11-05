import 'package:auto_route/auto_route.dart';
import 'package:homeberries/app/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => .adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      page: RootRoute.page,
      children: [
        AutoRoute(page: CatalogRoute.page, initial: true),
        AutoRoute(page: ProductRoute.page)
      ]
    )
  ];
}

@RoutePage()
class RootPage extends AutoRouter {
  const RootPage({super.key});
}