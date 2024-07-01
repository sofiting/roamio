import 'package:roamio/core/model/city.dart';
import 'package:roamio/core/service/city_service.dart';
import 'package:roamio/data/remote/city_remote_datasource.dart';

class CityServiceImpl implements CityService {
  final CityRemoteDatasource cityRemoteDatasource;

  CityServiceImpl(this.cityRemoteDatasource);

  @override
  Future<List<City>> getCities() {
    return cityRemoteDatasource.fetchCities();
  }
}
