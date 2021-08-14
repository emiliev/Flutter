import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation_riverpod_example/home/model/book.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeConfiguration with _$HomeConfiguration {
  const HomeConfiguration._();
  const factory HomeConfiguration(
      {int? id,
      Book? selectedBook,
      @Default(false) bool purpleTap}) = _HomeConfiguration;
}

/// Provider for the [BookStateController] instance.
final homeStateProvider =
    StateNotifierProvider<HomeStateController, HomeConfiguration>(
        (_) => HomeStateController());

class HomeStateController extends StateNotifier<HomeConfiguration> {
  HomeStateController() : super(HomeConfiguration());

  void setSelectedBookId(int id) {
    state = state.copyWith(id: id);
  }

  /// Sets the given [book] in the [BookState].
  void selectBook(Book? book) {
    state = state.copyWith(
      selectedBook: book,
      id: book != null ? book.id : null,
    );
  }

  void setPurpleFlag(bool flagValue) {
    state = state.copyWith(purpleTap: flagValue);
  }
}
