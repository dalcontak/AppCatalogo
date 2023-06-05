
import 'dart:ui';

class Product {
  final String name;
  final String description;
  final double unitPrice;
  final int quantityAvailable;
  final String category;
  final String url;
  final Image? image;

  const Product({
    required this.name,
    required this.description,
    required this.unitPrice,
    required this.quantityAvailable,
    required this.category,
    required this.url,
    this.image
  });
}

const productList = <Product>[
  Product(
    name: 'Producto Con Nombre Largo 1',
    description: 'Descripcion Descripcion Descripcin',
    unitPrice: 12.00,
    quantityAvailable: 4,
    category: 'Categoria1',
    url: 'https://nada.com'
  ),
  Product(
    name: 'Producto 2',
    description: 'Descripcion Descripcion Descripcin',
    unitPrice: 12.00,
    quantityAvailable: 4,
    category: 'Categoria1',
    url: 'https://nada2.com'
  ),
  Product(
    name: 'Producto 3',
    description: 'Descripcion Descripcion Descripcin',
    unitPrice: 49.99,
    quantityAvailable: 1902,
    category: 'Categoria2',
    url: 'https://nada3.com'
  ),
  Product(
    name: 'Producto 4',
    description: 'Descripcion Descripcion Descripcin',
    unitPrice: 12.00,
    quantityAvailable: 4,
    category: 'Categoria3',
    url: 'https://nada.com'
  ),
  Product(
    name: 'Producto 5',
    description: 'Descripcion Descripcion Descripcin',
    unitPrice: 12.00,
    quantityAvailable: 4,
    category: 'Categoria1',
    url: 'https://nada2.com'
  ),
  Product(
    name: 'Producto 6',
    description: 'Descripcion Descripcion Descripcin',
    unitPrice: 49.99,
    quantityAvailable: 1902,
    category: 'Categoria2',
    url: 'https://nada12.com'
  ),
];