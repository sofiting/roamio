import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roamio/core/model/city.dart';
import 'package:roamio/core/usecase/get_cities.dart';
import 'package:roamio/presentation/home/provider/home_provider.dart';

class CityViewModel extends StateNotifier<AsyncValue<List<City>>> {
  final GetCities getCities;

  CityViewModel(this.getCities) : super(const AsyncValue.loading()) {
    fetchCities();
  }

  Future<void> fetchCities() async {
    try {
      final cities = await getCities();
      state = AsyncValue.data(cities);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

final cityViewModelProvider =
    StateNotifierProvider<CityViewModel, AsyncValue<List<City>>>(
  (ref) {
    final getCities = ref.read(getCitiesProvider);
    return CityViewModel(getCities);
  },
);
