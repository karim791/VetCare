// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_members_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicMembersModel _$ClinicMembersModelFromJson(Map<String, dynamic> json) =>
    ClinicMembersModel(
      clinicId: json['clinic_id'] as String,
      userId: json['doctor_id'] as String,
    );

Map<String, dynamic> _$ClinicMembersModelToJson(ClinicMembersModel instance) =>
    <String, dynamic>{
      'clinic_id': instance.clinicId,
      'doctor_id': instance.userId,
    };
