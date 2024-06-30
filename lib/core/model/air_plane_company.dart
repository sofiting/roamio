import 'package:json_annotation/json_annotation.dart';
part 'air_plane_company.g.dart';

@JsonSerializable()
class AirplaneCompany {
  int id;
  String name;
  String image;
  double price;
  double recommendationStar;
  String description;

  AirplaneCompany({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.recommendationStar,
    required this.description,
  });

  factory AirplaneCompany.fromJson(Map<String, dynamic> json) =>
      _$AirplaneCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$AirplaneCompanyToJson(this);
}
