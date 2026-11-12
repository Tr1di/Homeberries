import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/router/app_router.gr.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';
import 'package:homeberries/features/catalog/presentations/widgets/product_rating.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(
          ProductRoute(product: product)
        );
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Padding(
        padding: EdgeInsets.all(6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Image.network(
                    product.imageUrl,
                ),
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight(700),
                        fontSize: 24,
                      ),
                    ),

                    Text(
                      '${product.price} RUB',
                      style: TextStyle(
                          fontWeight: FontWeight(500),
                          fontSize: 18
                      ),
                    )
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProductRating(
                      rating: product.rating
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}