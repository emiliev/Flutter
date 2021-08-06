import 'package:domain_models/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home/category_feature/category_provider.dart';
import 'package:home/category_feature/category_repository.dart';
import 'package:home/category_feature/category_view_model.dart';
import 'package:home/state/generic_state.dart';

void main() {
  test('override repositoryProvider', () async {
    final provider =
        StateNotifierProvider<CategoryViewModel, GenericState<List<Category>>>(
            (ref) => CategoryViewModel(ref));
    final container = ProviderContainer(
      overrides: [categoryNotifierProvider.overrideWithProvider(provider)],
    );

    /// Wait for the request to finish
    await container.read(provider.notifier).getCategories();
    await Future<void>.value();
    // Exposes the data fetched
    final asdf = container.read(provider);
    asdf.when(initial: () {
      expect(1, 2);
    }, loading: () {
      expect(1, 2);
    }, data: (data) {
      final categories = data as List<Category>;
      // expect(categories, [Category.strange("name", Icons.access_time_rounded)]);
      expect(categories, [
        isA<Category>()
            .having((s) => s.name, "name", "alabala")
            .having((s) => s.icon, "Icon", Icons.accessible_forward_outlined)
      ]);
    }, error: (error) {
      expect(1, 2);
    });
  });
}

class MockRepository implements FakeCategoryRepository {
  @override
  Future<List<Category>> fetchCategories() {
    final List<Category> categories = [Category.along("alabala")];
    return Future.value(categories);
  }
}
