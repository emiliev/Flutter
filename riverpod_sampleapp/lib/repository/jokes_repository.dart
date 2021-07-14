import 'package:riverpod_sample_app/models/joke_model.dart';
import 'package:riverpod_sample_app/states/request_state_notifier.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _dioProvider = Provider((ref) => Dio());
final _jokeRepositoryProvider = Provider((ref) => JokeRepository((ref.read)));
final jokeProvider =
    StateNotifierProvider<GetJokeRequestNotifier, RequestState<JokeModel>>(
        (ref) => GetJokeRequestNotifier(ref.watch(_jokeRepositoryProvider)));

class JokeRepository {
  final Reader _read;

  JokeRepository(this._read);

  Future<JokeModel> getJoke() async {
    final endpoint = 'https://v2.jokeapi.dev/joke/Programming?type=twopart';
    try {
      final response = await _read(_dioProvider).get(endpoint);
      return JokeModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response!.data != null) {
        throw e.response!.data;
      }
      throw e.error;
    }
  }
}

class GetJokeRequestNotifier extends RequestStateNotifier<JokeModel> {
  final JokeRepository _repository;

  GetJokeRequestNotifier(this._repository);

  getJoke() => makeRequest(() => _repository.getJoke());
}
