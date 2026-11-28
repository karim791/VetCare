// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) => PetModel(
  id: json['id'] as String,
  name: json['name'] as String,
  species: json['species'] as String,
  age: json['age'] as String,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  breed: json['breed'] as String?,
  image: json['image'] as String?,
  gender: json['gender'] as String?,
  weight: (json['weight'] as num?)?.toDouble(),
  ownerId: json['owner_id'] as String?,
);

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt?.toIso8601String(),
  'name': instance.name,
  'species': instance.species,
  'breed': instance.breed,
  'age': instance.age,
  'image': instance.image,
  'gender': instance.gender,
  'weight': instance.weight,
  'owner_id': instance.ownerId,
};
