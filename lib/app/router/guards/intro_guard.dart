import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:homeberries/app/router/app_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroGuard extends AutoRouteGuard {
  @override
  FutureOr<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final preferences = await SharedPreferences.getInstance();
    final isFirstLaunch = preferences.getBool('isFirstLaunch') ?? true;

    if (!isFirstLaunch) {
      resolver.next();
      return;
    }

    resolver.redirectUntil(
      IntroRoute(
          onDone: () {
            preferences.setBool('isFirstLaunch', false);
            resolver.next();
          },
      )
    );
  }
}