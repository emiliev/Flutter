import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain_models/models/category.dart';
import 'package:home/category_feature/category_view_model.dart';
import 'package:home/state/generic_state.dart';

///Dependency Injection

//* Logic / StateNotifier
final categoryNotifierProvider =
    StateNotifierProvider<CategoryViewModel, GenericState<List<Category>>>(
  (ref) => CategoryViewModel(ref),
);
