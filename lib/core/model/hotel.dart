import 'package:json_annotation/json_annotation.dart';
part 'hotel.g.dart';
@JsonSerializable()
class Hotel {
  int id;
  String name;
  List<String> images;
  double price;
  double recommendationStar;
  String description;

  Hotel({
    required this.id,
    required this.name,
    required this.images,
    required this.price,
    required this.recommendationStar,
    required this.description,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelToJson(this);
}
