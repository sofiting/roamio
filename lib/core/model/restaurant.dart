import 'package:json_annotation/json_annotation.dart';
part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
  int id;
  String name;
  String image;
  double price;
  double recommendationStar;
  String description;

  Restaurant({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.recommendationStar,
    required this.description,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
