import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';
import 'package:homeberries/features/catalog/presentations/widgets/product_rating.dart';

@RoutePage()
class ProductPage extends StatelessWidget {
  final Product product;
  
  const ProductPage({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight(700)
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 12,
          children: [
            Icon(
              product.icon,
              size: 200,
            ),
            
            Row(
              mainAxisAlignment: .spaceBetween,
              spacing: 12,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: const FontWeight(800)
                  ),
                ),

                ProductRating(rating: product.rating)
              ],
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '${product.price} RUB',
                  style: TextStyle(
                      fontWeight: FontWeight(500),
                      fontSize: 18
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}