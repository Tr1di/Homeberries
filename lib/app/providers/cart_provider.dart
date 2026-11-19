import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:homeberries/features/cart/domain/entities/cart_item.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';

class CartProvider extends ChangeNotifier {
  final Box<Map> _box = Hive.box<Map>('cart');

  final Map<int, CartItem> _items = {};

  bool _isLoading = false;

  Map<int, CartItem> get items => Map.unmodifiable(_items);

  bool get isLoading => _isLoading;

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

  Future<void> loadCart() async {
    _isLoading = true;
    notifyListeners();

    try {
      _items.clear();

      for (final entry in _box.toMap().entries) {
        final item = CartItem.fromMap(entry.value);
        _items[item.product.id] = item;
      }
    } catch (_) {

    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addProduct(Product product, { int amount = 1 }) async {
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

    await _box.put(product.id, _items[product.id]!.toMap());

    notifyListeners();
  }

  Future<void> removeProduct(int productId) async {
    await _box.delete(productId);

    _items.remove(productId);
    notifyListeners();
  }

  Future<void> increment(int productId) async {
    if (!_items.containsKey(productId)) return;

    final item = _items[productId]!;

    _items[productId] = item.copyWith(
      amount: item.amount + 1
    );

    await _box.put(productId, _items[productId]!.toMap());

    notifyListeners();
  }

  Future<void> decrement(int productId) async {
    if (!_items.containsKey(productId)) return;

    final item = _items[productId]!;

    if (item.amount > 1) {
      _items[productId] = item.copyWith(
          amount: item.amount - 1
      );

      await _box.put(productId, _items[productId]!.toMap());
    } else {
      await _box.delete(productId);
      _items.remove(productId);
    }

    notifyListeners();
  }

  Future<void> clear() async {
    await _box.clear();

    _items.clear();
    notifyListeners();
  }
}