import 'dart:convert';

class Ad {
  String id;
  String title;
  String details;
  String long;
  String lat;
  String type;
  String space;
  String userid;

  Ad({
    this.id,
    this.title,
    this.details,
    this.long,
    this.lat,
    this.type,
    this.space,
    this.userid
  });



  Ad copyWith({
    String id,
    String title,
    String details,
    String long,
    String lat,
    String type,
    String space,
    String userid,
  }) {
    return Ad(
      id: id ?? this.id,
      title: title ?? this.title,
      details: details ?? this.details,
      long: long ?? this.long,
      lat: lat ?? this.lat,
      type: type ?? this.type,
      space: space ?? this.space,
      userid: userid ?? this.userid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'details': details,
      'long': long,
      'lat': lat,
      'type': type,
      'space': space,
      'userid': userid,
    };
  }

  static Ad fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Ad(
      id: map['id'],
      title: map['title'],
      details: map['details'],
      long: map['long'],
      lat: map['lat'],
      type: map['type'],
      space: map['space'],
      userid: map['userid'],
    );
  }

  String toJson() => json.encode(toMap());

  static Ad fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ad(id: $id, title: $title, details: $details, long: $long, lat: $lat, type: $type, space: $space, userid: $userid)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Ad &&
      o.id == id &&
      o.title == title &&
      o.details == details &&
      o.long == long &&
      o.lat == lat &&
      o.type == type &&
      o.space == space &&
      o.userid == userid;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      details.hashCode ^
      long.hashCode ^
      lat.hashCode ^
      type.hashCode ^
      space.hashCode ^
      userid.hashCode;
  }
}
