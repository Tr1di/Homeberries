import 'package:flutter/widgets.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final IconData icon;
  final RatingData rating;

  const new({
    required this.id,
    required this.name,
    required this.price,
    required this.icon,
    required this.rating
  });
}

class RatingData {
  final double score;
  final int reviews;

  const new({
    required this.score,
    required this.reviews
  });
}