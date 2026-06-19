// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) =>
    _PaginationModel(
      limit: (json['limit'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
      nextCursor: json['nextCursor'] as String?,
      currentCount: (json['currentCount'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationModelToJson(_PaginationModel instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'hasNext': instance.hasNext,
      'nextCursor': instance.nextCursor,
      'currentCount': instance.currentCount,
    };
