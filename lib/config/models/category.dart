
import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  final IconData icon;

  const Category({
    required this.id,
    required this.name,
    required this.icon
  });
}

var categories = <Category>[
  const Category(
    id: 0,
    name: 'Favoritos',
    icon: Icons.favorite
  ),
  const Category(
    id: 1,
    name: 'Categoria 1',
    icon: Icons.pets
  ),
  const Category(
    id: 2,
    name: 'Categoria 2',
    icon: Icons.car_rental
  ),
];