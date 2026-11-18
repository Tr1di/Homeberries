import 'package:flutter/material.dart';
import 'package:homeberries/features/cart/domain/entities/cart_item.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';

class CartProvider extends ChangeNotifier {
  final Map<int, CartItem> _items = {};

  Map<int, CartItem> get items => Map.unmodifiable(_items);

  int get totalAmount {
    return _items.values.fold(
      0, (sum, item) => sum + item.amount
    );
  }

  double get totalPrice {
    return _items.values.fold(
        0, (sum, item) => sum + item.product.price * item.amount
    );
  }

  void addProduct(Product product, { int amount = 1 }) {
    if (_items.containsKey(product.id)) {
      final item = _items[product.id]!;

      _items[product.id] = item.copyWith(
        amount: item.amount + amount
      );
    } else {
      _items[product.id] = CartItem(
          product: product,
          amount: amount
      );
    }

    notifyListeners();
  }

  void removeProduct(int productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void increment(int productId) {
    if (!_items.containsKey(productId)) return;

    final item = _items[productId]!;

    _items[productId] = item.copyWith(
      amount: item.amount + 1
    );

    notifyListeners();
  }

  void decrement(int productId) {
    if (!_items.containsKey(productId)) return;

    final item = _items[productId]!;

    if (item.amount > 1) {
      _items[productId] = item.copyWith(
          amount: item.amount - 1
      );
    } else {
      _items.remove(productId);
    }

    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}