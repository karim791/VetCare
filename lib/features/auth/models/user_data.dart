

class UserData {
  final String id;
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'full_name': fullName,
      'email': email,
      'phone': phone,
      'image': image,
      
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id'] as String,
      fullName: map['full_name'] as String,
      email: map['email']  as String ,
      phone: map['phone'] != null ? map['phone'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
     
    );
  }

 }
