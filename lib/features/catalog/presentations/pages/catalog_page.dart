import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/services/api_service.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';
import 'package:homeberries/features/catalog/presentations/widgets/product_card.dart';

@RoutePage()
class CatalogPage extends StatelessWidget {
  final ApiService _api = ApiService();

  CatalogPage({super.key});

  @override
  Widget build(BuildContext context){
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
      body: FutureBuilder<List<Product>>(
        future: _api.getProducts(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (asyncSnapshot.hasError) {
            return Center(
              child: Text("Ошибка ${asyncSnapshot.error}"),
            );
          }

          final products = asyncSnapshot.data ?? [];

          if (products.isEmpty) {
            return Center(
              child: Text("Товары не найдены"),
            );
          }

          return ListView.separated(
            padding: EdgeInsets.all(12),
            itemCount: products.length,
            itemBuilder: (context, index) => ProductCard(product: products[index]),
            separatorBuilder: (context, index) => SizedBox(height: 8),
          );
        }
      ),
    );
  }
}