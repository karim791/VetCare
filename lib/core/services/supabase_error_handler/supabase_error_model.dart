import 'package:json_annotation/json_annotation.dart';

part 'supabase_error_model.g.dart';

@JsonSerializable()
class SupabaseErrorModel {
  final String message;
  final String? code;
  final int? statusCode;
  final String? details;
  final String? hint;

  const SupabaseErrorModel({
    required this.message,
    this.code,
    this.statusCode,
    this.details,
    this.hint,
  });

  factory SupabaseErrorModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SupabaseErrorModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SupabaseErrorModelToJson(this);
}