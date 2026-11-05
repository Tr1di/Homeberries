import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';
import 'package:homeberries/features/catalog/presentations/widgets/product_card.dart';

@RoutePage()
class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Ноутбук", price: 100, icon: Icons.laptop, rating: RatingData(score: 3.6, reviews: 110)),
      Product(id: 1, name: "Телефон", price: 60, icon: Icons.phone_android, rating: RatingData(score: 3.6, reviews: 110)),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Каталог",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight(700)
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductCard(product: products[index]),
        separatorBuilder: (context, index) => SizedBox(height: 8),
      ),
    );
  }
}