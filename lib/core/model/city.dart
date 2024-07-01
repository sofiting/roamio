import 'package:roamio/core/model/air_plane_company.dart';
import 'package:roamio/core/model/hotel.dart';
import 'package:roamio/core/model/restaurant.dart';

class City {
  final int id;
  final String name;
  final String image;
  final String description;
  final List<AirplaneCompany> airplaneCompanies;
  final List<Hotel> hotels;
  final List<Restaurant> restaurants;

  City({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.airplaneCompanies,
    required this.hotels,
    required this.restaurants,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    List<AirplaneCompany> airplaneCompaniesList =
        (json['airplaneCompanies'] as List)
            .map((companyJson) => AirplaneCompany.fromJson(companyJson))
            .toList();

    List<Hotel> hotelsList = (json['hotels'] as List)
        .map((hotelJson) => Hotel.fromJson(hotelJson))
        .toList();

    List<Restaurant> restaurantsList = (json['restaurants'] as List)
        .map((restaurantJson) => Restaurant.fromJson(restaurantJson))
        .toList();

    return City(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      description: json['description'],
      airplaneCompanies: airplaneCompaniesList,
      hotels: hotelsList,
      restaurants: restaurantsList,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> airplaneCompaniesJson =
        airplaneCompanies.map((company) => company.toJson()).toList();

    List<Map<String, dynamic>> hotelsJson =
        hotels.map((hotel) => hotel.toJson()).toList();

    List<Map<String, dynamic>> restaurantsJson =
        restaurants.map((restaurant) => restaurant.toJson()).toList();

    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
      'airplaneCompanies': airplaneCompaniesJson,
      'hotels': hotelsJson,
      'restaurants': restaurantsJson,
    };
  }
}
