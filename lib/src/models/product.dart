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
}
