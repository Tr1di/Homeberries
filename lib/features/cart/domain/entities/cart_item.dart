import 'package:homeberries/features/catalog/domain/entities/product.dart';

class CartItem {
  final Product product;
  final int amount;

  const new({
    required this.product,
    required this.amount,
  });

  CartItem copyWith({int? amount}) {
    return CartItem(
        product: product,
        amount: amount ?? this.amount
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'amount': amount
    };
  }

  factory CartItem.fromMap(Map<dynamic, dynamic> map) {
    return CartItem(
        product: Product.fromMap(map['product']),
        amount: map['amount']
    );
  }
}