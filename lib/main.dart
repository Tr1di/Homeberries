import 'package:flutter/material.dart';
import 'package:homeberries/app/providers/cart_provider.dart';
import 'package:homeberries/app/providers/theme_provider.dart';
import 'package:homeberries/app/router/app_router.dart';
import 'package:homeberries/app/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
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
              create: (_) => CartProvider()
          )
        ],
        builder: (context, child) {
          final themeProvider = context.watch<ThemeProvider>();

          return MaterialApp.router(
              title: 'Homeberries',
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: themeProvider.themeMode,
              routerConfig: _appRouter.config()
          );
        }
    );
  }
}
