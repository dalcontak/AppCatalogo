import 'package:app_catalogo/config/models/category.dart';
import 'package:app_catalogo/presentation/providers/menu_index_provider.dart';
import 'package:app_catalogo/presentation/screens/list_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainMenu extends StatefulWidget {

  const MainMenu({
    super.key
  });

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final menuIndex = ref.watch(menuIndexProvider);
        return NavigationDrawer(
          selectedIndex: menuIndex,
          onDestinationSelected: (value) {
            setState(() {
              //navIndex = value;
              ref.read(menuIndexProvider.notifier).state = value;
            });
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ListProductsScreen(category: categories[value]),
              )
            );
          },
          children: [
            ...categories.map((category) => NavigationDrawerDestination(
                icon: Icon(category.icon),
                label: Text(category.name))
            ),
          ]
        );
      },
    );
  }
}
