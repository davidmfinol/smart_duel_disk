// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_speed_duel_cards_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetSpeedDuelCardsResponseModel _$_$_GetSpeedDuelCardsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_GetSpeedDuelCardsResponseModel(
    speedDuelCards: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : SpeedDuelCardModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GetSpeedDuelCardsResponseModelToJson(
        _$_GetSpeedDuelCardsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.speedDuelCards,
    };
