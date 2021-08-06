import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;

  Category({
    name,
    icon,
  })  : this.name = name,
        this.icon = icon;

  factory Category.strange(String name, IconData icon) {
    return Category(name: name, icon: icon);
  }
  Category.along(String name)
      : this(
          name: name,
          icon: Icons.accessible_forward_outlined,
        );

  static final Category MockCategory2 =
      Category(name: "Alabala2", icon: Icons.set_meal);

  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category && (identical(other.name, name)));
  }
}
