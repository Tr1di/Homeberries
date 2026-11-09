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

        AutoRoute(
          initial: true,
          page: HomeRootRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true)
          ]
        ),

        AutoRoute(
          page: CatalogRootRoute.page,
          children: [
            AutoRoute(page: CatalogRoute.page, initial: true),
            AutoRoute(page: ProductRoute.page)
          ]
        )

      ]
    )

  ];
}

@RoutePage()
class HomeRootPage extends AutoRouter {
  const HomeRootPage({super.key});
}

@RoutePage()
class CatalogRootPage extends AutoRouter {
  const CatalogRootPage({super.key});
}