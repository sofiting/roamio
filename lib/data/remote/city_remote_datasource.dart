import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:roamio/core/model/city.dart';

class CityRemoteDatasource {
  final Dio _dio;

  CityRemoteDatasource({required Dio dio}) : _dio = dio {
    if (!kIsWeb) {
      // ignore: deprecated_member_use
      (_dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
  }

  Future<List<City>> fetchCities() async {
    final response = await _dio.get(
      'https://raw.githubusercontent.com/sofiting/city_api/main/city_api',
    );

    List<dynamic> result = json.decode(response.data)['cities'];
    List<City> cities = result.map((json) => City.fromJson(json)).toList();
    return cities;
  }
}
