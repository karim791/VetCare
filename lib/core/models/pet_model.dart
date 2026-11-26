import 'package:json_annotation/json_annotation.dart';

part 'pet_model.g.dart';

@JsonSerializable()
class PetModel {
  final String id;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  final String name;
  final String species;
  final String? breed;
  final String age;
  final String? image;
  final String? gender;
  final double? weight;

  @JsonKey(name: 'owner_id')
  final String? ownerId;

  const PetModel({
    required this.id,
    required this.name,
    required this.species,
    required this.age,
    this.createdAt,
    this.breed,
    this.image,
    this.gender,
    this.weight,
    this.ownerId,
  });

  factory PetModel.fromJson(Map<String, dynamic> map) =>
      _$PetModelFromJson(map);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);


  Map<String, dynamic> toInsertMap() {
    return toJson()
      ..remove('id')
      ..remove('created_at');
  }
}