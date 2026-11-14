import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  final String id;
  @JsonKey(name: 'full_name')
  final String fullName;
  final String email;
  final String? phone;
  final String? image;

  const UserData({
    required this.id,
    required this.fullName,
    required this.email,
    this.phone,
    this.image,
  });

  factory UserData.fromMap(Map<String, dynamic> map) =>
      _$UserDataFromJson(map);

  Map<String, dynamic> toMap() => _$UserDataToJson(this);
}
