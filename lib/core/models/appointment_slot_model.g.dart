// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentSlotModel _$AppointmentSlotModelFromJson(
  Map<String, dynamic> json,
) => AppointmentSlotModel(
  id: json['id'] as String,
  clinicId: json['clinic_id'] as String,
  doctorId: (json['doctor_id'] as num).toInt(),
  startsAt: DateTime.parse(json['starts_at'] as String),
  available: json['available'] as bool,
);

Map<String, dynamic> _$AppointmentSlotModelToJson(
  AppointmentSlotModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'clinic_id': instance.clinicId,
  'doctor_id': instance.doctorId,
  'starts_at': instance.startsAt.toIso8601String(),
  'available': instance.available,
};
