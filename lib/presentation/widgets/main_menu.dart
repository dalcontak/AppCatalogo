import 'package:app_catalogo/config/models/category.dart';
import 'package:app_catalogo/presentation/screens/list_products.dart';
import 'package:flutter/material.dart';

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
    return NavigationDrawer(
      selectedIndex: navIndex,
      onDestinationSelected: (value) {
        setState(() {
          navIndex = value;
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
  }
}
