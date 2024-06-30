// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      airplaneCompanies: (json['airplaneCompanies'] as List<dynamic>)
          .map((e) => AirplaneCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurants: (json['restaurants'] as List<dynamic>)
          .map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'airplaneCompanies': instance.airplaneCompanies,
      'hotels': instance.hotels,
      'restaurants': instance.restaurants,
    };
