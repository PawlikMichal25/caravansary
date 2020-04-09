import 'package:flutter/foundation.dart';

@immutable
class Spice {
  final int id;
  final String name;

  const Spice({
    @required this.id,
    @required this.name,
  });

  factory Spice.fromJson(Map<String, dynamic> json) {
    return Spice(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'Spice{id: $id, name: $name}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Spice && runtimeType == other.runtimeType && id == other.id && name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
