import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/router/app_router.gr.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(

      routes: const [
        HomeRootRoute(),
        CatalogRootRoute()
      ],

      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              if (index == tabsRouter.activeIndex) {
                tabsRouter.stackRouterOfIndex(index)?.popUntilRoot();
              } else {
                tabsRouter.setActiveIndex(index);
              }
            },
          items: const [

            BottomNavigationBarItem(
              icon: Icon(
                Icons.house
              ),
              label: "Главная"
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view_rounded
              ),
              label: "Каталог"
            )

          ]
        );
      },
    );
  }
}