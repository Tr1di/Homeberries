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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'category': category,
      'price': price,
      'imageUrl': imageUrl,
      'rating': rating.toMap(),
    };
  }

  factory Product.fromMap(Map<dynamic, dynamic> map) {
    return Product(
        id: map['id'] as int,
        name: map['name'] as String,
        description: map['description'] as String,
        category: map['category'] as String,
        price: (map['price'] as num).toDouble(),
        imageUrl: map['imageUrl'] as String,
        rating: RatingData.fromMap(map['rating'])
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

  Map<String, dynamic> toMap() {
    return {
      'score': score,
      'reviews': reviews
    };
  }

  factory RatingData.fromMap(Map<dynamic, dynamic> map) {
    return RatingData(
        score: (map['score'] as num).toDouble(),
        reviews: map['reviews'] as int
    );
  }
}