import 'package:json_annotation/json_annotation.dart';

part 'clinic_model.g.dart';

@JsonSerializable()
class ClinicModel {
  final String id;
  final String name;
  final String address;
  final String? phone;
  final String? image;
  final bool active;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  const ClinicModel({
    required this.id,
    required this.name,
    required this.address,
    this.phone,
    this.image,
    required this.active,
    required this.createdAt,
  });

  factory ClinicModel.fromMap(Map<String, dynamic> json) =>
      _$ClinicModelFromJson(json);

  Map<String, dynamic> toMap() => _$ClinicModelToJson(this);
}