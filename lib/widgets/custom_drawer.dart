import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopistry/pages/categories_page.dart';
import 'package:shopistry/pages/products_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset("assets/images/logo.png")),
          ListTile(
            onTap: () {
              Navigator.popAndPushNamed(context, ProductsPage.id);
            },
            title: Text("Products"),
            leading: Icon(FontAwesomeIcons.cartShopping),
          ),
          ListTile(
            onTap: () {
              Navigator.popAndPushNamed(context, CategoriesPage.id);
            },
            title: Text("Categories"),
            leading: Icon(FontAwesomeIcons.clipboard),
          ),
        ],
      ),
    );
  }
}
