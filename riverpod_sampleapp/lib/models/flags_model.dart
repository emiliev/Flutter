import 'package:freezed_annotation/freezed_annotation.dart';
part 'flags_model.freezed.dart';
part 'flags_model.g.dart';

@freezed
class FlagsModel with _$FlagsModel {
  const factory FlagsModel({
    @Default(true) bool explicit,
    @Default(true) bool nsfw,
    @Default(true) bool political,
    @Default(true) bool racist,
    @Default(true) bool religious,
    @Default(true) bool sexist,
  }) = _FlagsModel;

  factory FlagsModel.fromJson(Map<String, dynamic> json) =>
      _$FlagsModelFromJson(json);
}
