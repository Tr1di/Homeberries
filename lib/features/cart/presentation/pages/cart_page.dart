import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Каталог",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: Consumer<CartProvider>(
        builder: (context, cart, child) {
          if (cart.items.isEmpty) {
            return Center(
              child: Text(
                "Корзина пуста",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            );
          }

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: cart.items.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final item = cart.items.values.toList()[index];

                    return ListTile(
                      title: Text(
                        item.product.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      subtitle: Text(
                        '${item.product.price} RUB',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      trailing: Text(
                        '${item.amount} шт.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  },
                )
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(12),
                child: Text(
                  "Итого: ${cart.totalPrice.toStringAsFixed(2)} RUB",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}