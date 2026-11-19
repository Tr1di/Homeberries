import 'package:flutter/material.dart';
import 'package:homeberries/app/providers/cart_provider.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';
import 'package:provider/provider.dart';

class AddToCartButton extends StatelessWidget {
  final Product product;

  const AddToCartButton({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Selector<CartProvider, int?>(
      selector: (context, cart) => cart.items[product.id]?.amount,
      builder: (context, amount, child) {
        if (amount == null) {
          return ElevatedButton(
            onPressed: () {
              context.read<CartProvider>().addProduct(product);
            },
            child: Text("В корзину")
          );
        }

        return Row(
          spacing: 12,
          mainAxisAlignment: .start,
          children: [
            IconButton.filledTonal(
              onPressed: () {
                context.read<CartProvider>().decrement(product.id);
              },
              icon: amount > 1
                  ? Icon(Icons.remove)
                  : Icon(Icons.delete)
            ),

            Text(
              "$amount шт.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            IconButton.filledTonal(
              onPressed: () {
                context.read<CartProvider>().increment(product.id);
              },
              icon: Icon(Icons.add)
            ),
          ],
        );
      },
    );
  }
}