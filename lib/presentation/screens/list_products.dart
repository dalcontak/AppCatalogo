import 'package:app_catalogo/config/models/category.dart';
import 'package:app_catalogo/config/models/product.dart';
import 'package:app_catalogo/presentation/screens/product/product_detail.dart';
import 'package:app_catalogo/presentation/widgets/main_menu.dart';
import 'package:flutter/material.dart';

class ListProductsScreen extends StatelessWidget {

  final Category category;

  const ListProductsScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria: ${category.name}'),
      ),
      body: const _ListProducts(),
      drawer: MainMenu(),
    );
  }
}

class _ListProducts extends StatelessWidget {
  const _ListProducts();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: productList.length,
      itemExtent: 160,
      itemBuilder: (context, index) {
        final product = productList[index];

        return _CustomProduct(index: index, product: product);
      }
    );
  }
}

class _CustomProduct extends StatelessWidget {
  const _CustomProduct({
    required this.index,
    required this.product,
  });

  final int index;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      tileColor: index.isEven ? colors.outlineVariant : colors.outline,
      trailing: Icon( Icons.arrow_forward_ios_rounded, color: colors.primary, ),
      title: Text( product.name, style: const TextStyle(
          fontSize: 30, overflow: TextOverflow.ellipsis )),
      subtitle: Text(product.unitPrice.toStringAsFixed(2)),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductScreen(product: product),
          )
        );
      },
    );
  }
}
