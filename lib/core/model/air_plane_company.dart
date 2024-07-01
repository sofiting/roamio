class AirplaneCompany {
  final int id;
  final String name;
  final String image;
  final double price;
  final double recommendationStar;
  final String description;

  AirplaneCompany({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.recommendationStar,
    required this.description,
  });

  factory AirplaneCompany.fromJson(Map<String, dynamic> json) {
    return AirplaneCompany(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'].toDouble(),
      recommendationStar: json['recommendationStar'].toDouble(),
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'price': price,
        'recommendationStar': recommendationStar,
        'description': description,
      };
}
