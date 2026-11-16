import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Настройки",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: RadioGroup<ThemeMode>(
        onChanged: (value) {
          if (value != null) {
            context.read<ThemeProvider>().changeTheme(value);
          }
        },
        groupValue: themeProvider.themeMode,
        child: Column(
          children: [
            RadioListTile(
              value: ThemeMode.system,
              title: Text(
                "Системная",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            RadioListTile(
              value: ThemeMode.light,
              title: Text(
                "Светлая",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            RadioListTile(
              value: ThemeMode.dark,
              title: Text(
                "Тёмная",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}