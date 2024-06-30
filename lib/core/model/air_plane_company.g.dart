// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_plane_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirplaneCompany _$AirplaneCompanyFromJson(Map<String, dynamic> json) =>
    AirplaneCompany(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      recommendationStar: (json['recommendationStar'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$AirplaneCompanyToJson(AirplaneCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'recommendationStar': instance.recommendationStar,
      'description': instance.description,
    };
