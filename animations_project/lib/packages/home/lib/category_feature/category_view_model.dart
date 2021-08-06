import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/category.dart';
import 'package:home/category_feature/category_repository.dart';
import 'package:home/state/generic_state.dart';

//* Repository
final _categoryRepositoryProvider = Provider<FakeCategoryRepository>(
  (ref) => FakeCategoryRepository(),
);

class CategoryViewModel extends StateNotifier<GenericState<List<Category>>> {
  final ProviderReference _ref;
  CategoryViewModel(
    this._ref,
  ) : super(const GenericState.initial());

  Future<void> getCategories() async {
    state = const GenericState.loading();
    final repository = _ref.read(_categoryRepositoryProvider);
    try {
      final categories = await repository.fetchCategories();
      state = GenericState.data(data: categories);
    } catch (_) {
      state = GenericState.error('Error!');
    }
  }
}
