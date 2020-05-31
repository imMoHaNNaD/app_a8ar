import 'dart:convert';

class Border {
  String id;
  String direction;
  String details;
  int length;
  int lat;
  int width;
  bool isStreet;
  String aDid;

  Border({
    this.id,
    this.direction,
    this.details,
    this.length,
    this.lat,
    this.width,
    this.isStreet,
    this.aDid
  });

  Border copyWith({
    String id,
    String direction,
    String details,
    int length,
    int lat,
    int width,
    bool isStreet,
    String aDid,
  }) {
    return Border(
      id: id ?? this.id,
      direction: direction ?? this.direction,
      details: details ?? this.details,
      length: length ?? this.length,
      lat: lat ?? this.lat,
      width: width ?? this.width,
      isStreet: isStreet ?? this.isStreet,
      aDid: aDid ?? this.aDid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'direction': direction,
      'details': details,
      'length': length,
      'lat': lat,
      'width': width,
      'isStreet': isStreet,
      'aDid': aDid,
    };
  }

  static Border fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Border(
      id: map['id'],
      direction: map['direction'],
      details: map['details'],
      length: map['length'],
      lat: map['lat'],
      width: map['width'],
      isStreet: map['isStreet'],
      aDid: map['aDid'],
    );
  }

  String toJson() => json.encode(toMap());

  static Border fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Border(id: $id, direction: $direction, details: $details, length: $length, lat: $lat, width: $width, isStreet: $isStreet, aDid: $aDid)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Border &&
      o.id == id &&
      o.direction == direction &&
      o.details == details &&
      o.length == length &&
      o.lat == lat &&
      o.width == width &&
      o.isStreet == isStreet &&
      o.aDid == aDid;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      direction.hashCode ^
      details.hashCode ^
      length.hashCode ^
      lat.hashCode ^
      width.hashCode ^
      isStreet.hashCode ^
      aDid.hashCode;
  }
}
