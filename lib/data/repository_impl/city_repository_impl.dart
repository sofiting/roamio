import 'package:roamio/core/model/city.dart';
import 'package:roamio/core/repository/city_repository.dart';
import 'package:roamio/core/service/city_service.dart';

class CityRepositoryImpl implements CityRepository {
  final CityService cityService;

  CityRepositoryImpl(this.cityService);

  @override
  Future<List<City>> fetchCities() {
    return cityService.getCities();
  }
}
