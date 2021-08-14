import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod_example/home/model/book.dart';
import 'package:navigation_riverpod_example/home/repository/book_repository.dart';
import 'package:navigation_riverpod_example/home/state/generic_state.dart';

typedef HomeDetailsStateType = GenericState<Book>;

late final homeDetailsProvider = StateNotifierProvider.family<
    HomeDetailsViewModel,
    HomeDetailsStateType,
    int>((ref, id) => HomeDetailsViewModel(ref, id));

class HomeDetailsViewModel extends StateNotifier<HomeDetailsStateType> {
  final ProviderRefBase _ref;
  final int _bookId;

  HomeDetailsViewModel(this._ref, this._bookId)
      : super(GenericState.initial()) {
    print('Initialized');
  }

  Future<void> getBookDetails() async {
    state = GenericState.initial();
    try {
      final repository = _ref.read(bookRepositoryProvider);
      final book = await repository.fetchBookById(_bookId);
      state = GenericState.success(book);
    } catch (_) {
      state = GenericState.error();
    }
  }
}
