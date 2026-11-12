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
        child: LayoutBuilder(
          builder: (context, _) {
            return SingleChildScrollView(
              child: Column(
                spacing: 12,
                children: [
                  SizedBox(
                    width: 350,
                    height: 350,
                    child: Image.network(
                      product.imageUrl,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: .spaceBetween,
                    spacing: 12,
                    children: [
                      Expanded(
                        child: Text(
                          product.name,
                          maxLines: 2,
                          overflow: .ellipsis,
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: const FontWeight(800)
                          ),
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
            );
          }
        ),
      ),
    );
  }
}