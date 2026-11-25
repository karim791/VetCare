import 'package:json_annotation/json_annotation.dart';

part 'appointment_model.g.dart';

enum AppointmentStatus {
  @JsonValue('confirmed')
  confirmed,

  @JsonValue('completed')
  completed,

  @JsonValue('cancelled')
  cancelled,
}

@JsonSerializable()
class AppointmentModel {
  final String id;

  @JsonKey(name: 'pet_id')
  final String petId;

  @JsonKey(name: 'slot_id')
  final String slotId;

  final String? reason;

  final AppointmentStatus status;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  const AppointmentModel({
    required this.id,
    required this.petId,
    required this.slotId,
    this.reason,
    required this.status,
    required this.createdAt,
  });

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentModelToJson(this);
}