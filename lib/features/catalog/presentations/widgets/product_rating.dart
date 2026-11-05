import 'package:flutter/material.dart';
import 'package:homeberries/features/catalog/domain/entities/product.dart';

class ProductRating extends StatelessWidget {
  final RatingData rating;

  const new({
    super.key,
    required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .center,
      mainAxisAlignment: .end,
      spacing: 4,
      children: [
        Icon(
          Icons.star,
          size: 16,
        ),
        Text(
          '${rating.score} (${rating.reviews})',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight(500)
          ),
        ),
      ],
    );
  }
}