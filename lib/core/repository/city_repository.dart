import 'package:roamio/core/model/city.dart';

abstract class CityRepository {
  Future<List<City>> fetchCities();
}
