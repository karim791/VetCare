// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicModel _$ClinicModelFromJson(Map<String, dynamic> json) => ClinicModel(
  id: json['id'] as String,
  name: json['name'] as String,
  address: json['address'] as String,
  phone: json['phone'] as String?,
  image: json['image'] as String?,
  active: json['active'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ClinicModelToJson(ClinicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'image': instance.image,
      'active': instance.active,
      'created_at': instance.createdAt.toIso8601String(),
    };
