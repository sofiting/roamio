import 'package:json_annotation/json_annotation.dart';
import 'package:roamio/core/model/air_plane_company.dart';
import 'package:roamio/core/model/hotel.dart';
import 'package:roamio/core/model/restaurant.dart';

part 'city.g.dart';
@JsonSerializable()
class City {
  int id;
  String name;
  String image;
  String description;
  List<AirplaneCompany> airplaneCompanies;
  List<Hotel> hotels;
  List<Restaurant> restaurants;

  City({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.airplaneCompanies,
    required this.hotels,
    required this.restaurants,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
