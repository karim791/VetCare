// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupabaseErrorModel _$SupabaseErrorModelFromJson(Map<String, dynamic> json) =>
    SupabaseErrorModel(
      message: json['message'] as String,
      code: json['code'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      details: json['details'] as String?,
      hint: json['hint'] as String?,
    );

Map<String, dynamic> _$SupabaseErrorModelToJson(SupabaseErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'statusCode': instance.statusCode,
      'details': instance.details,
      'hint': instance.hint,
    };
