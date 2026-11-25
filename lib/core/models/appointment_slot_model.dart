import 'package:json_annotation/json_annotation.dart';

part 'appointment_slot_model.g.dart';

@JsonSerializable()
class AppointmentSlotModel {
  final String id;

  @JsonKey(name: 'clinic_id')
  final String clinicId;

  @JsonKey(name: 'doctor_id')
  final int doctorId;

  @JsonKey(name: 'starts_at')
  final DateTime startsAt;

  final bool available;

  const AppointmentSlotModel({
    required this.id,
    required this.clinicId,
    required this.doctorId,
    required this.startsAt,
    required this.available,
  });

  // Calculated locally; not a database column.
  @JsonKey(includeFromJson: false, includeToJson: false)
  DateTime get endsAt => startsAt.add(const Duration(minutes: 30));

  factory AppointmentSlotModel.fromMap(Map<String, dynamic> json) =>
      _$AppointmentSlotModelFromJson(json);

  Map<String, dynamic> toMap() => _$AppointmentSlotModelToJson(this);
}