// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    AppointmentModel(
      id: json['id'] as String,
      petId: json['pet_id'] as String,
      slotId: json['slot_id'] as String,
      reason: json['reason'] as String?,
      status: $enumDecode(_$AppointmentStatusEnumMap, json['status']),
      appointment: DateTime.parse(json['appointment'] as String),
    );

Map<String, dynamic> _$AppointmentModelToJson(AppointmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pet_id': instance.petId,
      'slot_id': instance.slotId,
      'reason': instance.reason,
      'status': _$AppointmentStatusEnumMap[instance.status]!,
      'appointment': instance.appointment.toIso8601String(),
    };

const _$AppointmentStatusEnumMap = {
  AppointmentStatus.confirmed: 'confirmed',
  AppointmentStatus.completed: 'completed',
  AppointmentStatus.cancelled: 'cancelled',
};
