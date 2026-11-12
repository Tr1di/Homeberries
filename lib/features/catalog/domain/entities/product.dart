class Product {
  final int id;
  final String name;
  final String description;
  final String category;
  final double price;
  final String imageUrl;
  final RatingData rating;

  const new({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.rating
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int, 
        name: json['title'] as String, 
        description: json['description'] as String, 
        category: json['category'] as String, 
        price: (json['price'] as num).toDouble(),
        imageUrl: json['image'] as String, 
        rating: RatingData.fromJson(json['rating'])
    );
  }
}

class RatingData {
  final double score;
  final int reviews;

  const new({
    required this.score,
    required this.reviews
  });
  
  factory RatingData.fromJson(Map<String, dynamic> json) {
    return RatingData(
        score: (json['rate'] as num).toDouble(),
        reviews: json['count'] as int
    );
  }
}