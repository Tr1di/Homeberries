import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:homeberries/app/providers/cart_provider.dart';
import 'package:homeberries/app/providers/theme_provider.dart';
import 'package:homeberries/app/router/app_router.dart';
import 'package:homeberries/app/theme/app_theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<Map>('cart');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ThemeProvider()..loadTheme(),
          ),
          ChangeNotifierProvider(
              create: (_) => CartProvider()..loadCart()
          )
        ],
        builder: (context, child) {
          final themeProvider = context.watch<ThemeProvider>();

          return MaterialApp.router(
              title: 'Homeberries',
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: themeProvider.themeMode,
              routerConfig: _appRouter.config(),
              scrollBehavior: _CustomScrollBehaviour(),
          );
        }
    );
  }
}

class _CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  // TODO: implement dragDevices
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}