import 'package:flutter/material.dart';
import 'package:shopistry/services/all_categories.dart';
import 'package:shopistry/services/all_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          IconButton(
            onPressed: () async {
              await AllCategories().getAllCategories();
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
