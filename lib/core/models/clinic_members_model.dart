import 'package:json_annotation/json_annotation.dart';

part 'clinic_members_model.g.dart';



@JsonSerializable()
class ClinicMembersModel {
  @JsonKey(name: 'clinic_id')
  final String clinicId;

  @JsonKey(name: 'doctor_id')
  final String userId;

  

  const ClinicMembersModel({
    required this.clinicId,
    required this.userId,
  
  });

  factory ClinicMembersModel.fromJson(Map<String, dynamic> json) =>
      _$ClinicMembersModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClinicMembersModelToJson(this);
}