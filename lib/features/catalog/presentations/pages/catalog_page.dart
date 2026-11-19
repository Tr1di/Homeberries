import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:homeberries/app/services/api_service.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';
import 'package:homeberries/features/catalog/presentations/widgets/product_card.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<StatefulWidget> createState() => CatalogState();
}

class CatalogState extends State<CatalogPage> {
  final ApiService _api = ApiService();

  late Future<List<Product>> _products;

  Future<List<Product>> _fetchData() async {
    return await _api.getProducts();
  }

  @override
  void initState() {
    super.initState();
    _products = _fetchData();
  }

  void _retry() {
    setState(() {
      _products = _fetchData();
    });
  }

  Future<void> _refresh() async {
    final products = _fetchData();

    setState(() {
      _products = products;
    });

    try {
      await products;
    } catch (_) {

    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Каталог",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: _refresh,
            icon: Icon(
              Icons.refresh
            )
          )
        ],
        centerTitle: true,
      ),
      body: FutureBuilder<List<Product>>(
        future: _products,
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (asyncSnapshot.hasError) {
            return Center(
              child: Column(
                spacing: 12,
                mainAxisSize: .min,
                children: [
                  Text(
                    "Ошибка: ${asyncSnapshot.error}",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  ElevatedButton(
                      onPressed: _retry,
                      child: Text(
                        "Повторить",
                      )
                  )
                ],
              ),
            );
          }

          final products = asyncSnapshot.data ?? [];

          if (products.isEmpty) {
            return RefreshIndicator(
              onRefresh: _refresh,
              child: ListView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()
                ),
                children: [
                  Center(
                    child: Text(
                      "Товары не найдены",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.separated(
              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()
              ),
              padding: EdgeInsets.all(12),
              itemCount: products.length,
              itemBuilder: (context, index) => ProductCard(product: products[index]),
              separatorBuilder: (context, index) => SizedBox(height: 8),
            ),
          );
        }
      ),
    );
  }
}