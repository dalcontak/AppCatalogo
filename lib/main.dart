import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Catalogo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 6).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Catalogo'),
        ),
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {},
              child: const Text('Click me')),
        ),
      ),
    );
  }
}
