class Hotel {
  final int id;
  final String name;
  final List<String> images;
  final double price;
  final double recommendationStar;
  final String description;

  Hotel({
    required this.id,
    required this.name,
    required this.images,
    required this.price,
    required this.recommendationStar,
    required this.description,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) {
    try {
      var imagesList = json['images'] as List;
      List<String> images = imagesList.cast<String>();

      for (var element in images) {
        if (element.runtimeType != String) {
          throw Exception('All elements in images should be of type String');
        }
      }

      return Hotel(
        id: json['id'],
        name: json['name'],
        images: images,
        price: json['price'].toDouble(),
        recommendationStar: json['recommendationStar'].toDouble(),
        description: json['description'],
      );
    } catch (e) {
      throw Exception('Error parsing Hotel from JSON: $e');
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'images': images,
        'price': price,
        'recommendationStar': recommendationStar,
        'description': description,
      };
}
