import 'package:dio/dio.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://fakestoreapi.com',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    )
  );

  Future<List<Product>> getProducts() async {
    final response = await _dio.get('/products');

    final data = response.data as List;

    return data
        .map((item) => Product.fromJson(item))
        .toList();
  }
}