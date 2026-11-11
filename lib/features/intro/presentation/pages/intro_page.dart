import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IntroPage extends StatelessWidget {
  final void Function() onDone;

  const IntroPage({
    super.key,
    required this.onDone
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text("Добро пожаловать!")
                ),
              ),
              ElevatedButton(
                  onPressed: onDone,
                  child: Text("Продолжить")
              )
            ],
          ),
        )
    );
  }
}