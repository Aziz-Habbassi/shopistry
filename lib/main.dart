import 'package:flutter/material.dart';
import 'package:shopistry/pages/categories_page.dart';
import 'package:shopistry/pages/products_page.dart';
import 'package:shopistry/pages/update_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      routes: {
        ProductsPage.id: (context) => ProductsPage(),
        UpdatePage.id: (context) => UpdatePage(),
        CategoriesPage.id: (context) => CategoriesPage(),
      },
      initialRoute: ProductsPage.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
