import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/providers/cart_provider.dart';
import 'package:homeberries/app/router/app_router.gr.dart';
import 'package:provider/provider.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(

      routes: const [
        HomeRootRoute(),
        CatalogRootRoute(),
        CartRootRoute(),
        SettingsRootRoute()
      ],

      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
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
              ),

              BottomNavigationBarItem(
                icon: _CartIcon(),
                label: "Корзина"
              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings
                ),
                label: "Настройки"
              )
            ]
        );
      },
    );
  }
}

class _CartIcon extends StatelessWidget {
  const new();
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.shopping_cart),

        Selector<CartProvider, int>(
          selector: (p0, p1) => p1.totalAmount,
          builder: (context, total, child) {
            if (total <= 0) {
              return SizedBox.shrink();
            }

            return Positioned(
                top: 0,
                right: 0,
                child: Badge(
                  label: Text("$total"),
                )
            );
          },
        )
      ],
    );
  }
  
}
