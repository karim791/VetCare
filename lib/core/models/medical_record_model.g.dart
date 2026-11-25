// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicalRecordModel _$MedicalRecordModelFromJson(Map<String, dynamic> json) =>
    MedicalRecordModel(
      id: json['id'] as String,
      appointmentId: json['appointment_id'] as String,
      diagnosis: json['diagnosis'] as String,
      treatment: json['treatment'] as String?,
      vaccination: json['vaccination'] as String?,
      nextVisit: json['next_visit'] == null
          ? null
          : DateTime.parse(json['next_visit'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$MedicalRecordModelToJson(MedicalRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment_id': instance.appointmentId,
      'diagnosis': instance.diagnosis,
      'treatment': instance.treatment,
      'vaccination': instance.vaccination,
      'next_visit': MedicalRecordModel._dateToJson(instance.nextVisit),
      'created_at': instance.createdAt.toIso8601String(),
    };
