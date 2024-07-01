import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roamio/presentation/home/viewmodel/city_viewmodel.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  static String name = "home_screen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(cityViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: asyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        data: (cities) {
          return ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return ListTile(
                leading: Image.network(
                  city.image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(city.name),
                subtitle: Text(city.description),
              );
            },
          );
        },
      ),
    );
  }
}
