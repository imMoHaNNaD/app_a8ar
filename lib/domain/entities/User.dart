import 'dart:convert';

class User {
  String id;
  String name;
  String phone;
  String email;
  String type;

  User({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.type,
  });


  User copyWith({
    String id,
    String name,
    String phone,
    String email,
    String type,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'type': type,
    };
  }

  static User fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return User(
      id: map['id'],
      name: map['name'],
      phone: map['phone'],
      email: map['email'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  static User fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, phone: $phone, email: $email, type: $type)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is User &&
      o.id == id &&
      o.name == name &&
      o.phone == phone &&
      o.email == email &&
      o.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      phone.hashCode ^
      email.hashCode ^
      type.hashCode;
  }
}
