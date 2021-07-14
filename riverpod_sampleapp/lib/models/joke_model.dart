import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_sample_app/models/flags_model.dart';
part 'joke_model.freezed.dart';
part 'joke_model.g.dart';

@freezed
class JokeModel with _$JokeModel {
  const factory JokeModel(
      {required bool safe,
      String? category,
      String? delivery,
      FlagsModel? flags,
      int? id,
      String? lang,
      String? setup,
      String? type}) = _JokeModel;

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
}
