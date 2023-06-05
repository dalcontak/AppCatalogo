import 'package:app_catalogo/config/models/category.dart';
import 'package:app_catalogo/presentation/screens/list_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(
  ProviderScope(child: MyApp())
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Catalogo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
      home: ListProductsScreen(category: categories[0]),
    );
  }
}
