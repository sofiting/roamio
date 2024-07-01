import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roamio/core/usecase/get_cities.dart';
import 'package:roamio/data/remote/city_remote_datasource.dart';
import 'package:roamio/data/repository_impl/city_repository_impl.dart';
import 'package:roamio/data/service_impl/city_service_impl.dart';

final cityRemoteDataSourceProvider =
    Provider((ref) => CityRemoteDatasource(dio: Dio()));
final cityServiceProvider =
    Provider((ref) => CityServiceImpl(ref.read(cityRemoteDataSourceProvider)));
final cityRepositoryProvider =
    Provider((ref) => CityRepositoryImpl(ref.read(cityServiceProvider)));
final getCitiesProvider =
    Provider((ref) => GetCities(ref.read(cityRepositoryProvider)));
