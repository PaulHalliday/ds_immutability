import 'package:flutter/material.dart';

@immutable
class Product {
  final String id;
  final String name;
  final Color color;

  const Product({
    @required this.id,
    @required this.name,
    this.color = Colors.red,
  })  : assert(id != null),
        assert(name != null);

  Product copyWith({
    String id,
    String name,
    Color color,
  }) =>
      Product(
          id: id ?? this.id,
          name: name ?? this.name,
          color: color ?? this.color);

  @override
  String toString() {
    return "Product: ID = $id, Name = $name";
  }

  @override
  bool operator ==(Object other) =>
      other is Product &&
      other.id == id &&
      other.name == name &&
      other.color == color;

  @override
  int get hashCode => hashValues(id, name, color);
}
