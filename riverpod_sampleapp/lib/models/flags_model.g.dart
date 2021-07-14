// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlagsModel _$_$_FlagsModelFromJson(Map<String, dynamic> json) {
  return _$_FlagsModel(
    explicit: json['explicit'] as bool? ?? true,
    nsfw: json['nsfw'] as bool? ?? true,
    political: json['political'] as bool? ?? true,
    racist: json['racist'] as bool? ?? true,
    religious: json['religious'] as bool? ?? true,
    sexist: json['sexist'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_FlagsModelToJson(_$_FlagsModel instance) =>
    <String, dynamic>{
      'explicit': instance.explicit,
      'nsfw': instance.nsfw,
      'political': instance.political,
      'racist': instance.racist,
      'religious': instance.religious,
      'sexist': instance.sexist,
    };
