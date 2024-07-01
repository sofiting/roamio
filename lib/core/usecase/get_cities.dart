import 'package:roamio/core/model/city.dart';
import 'package:roamio/core/repository/city_repository.dart';

class GetCities {
  final CityRepository repository;

  GetCities(this.repository);

  Future<List<City>> call() {
    return repository.fetchCities();
  }
}
