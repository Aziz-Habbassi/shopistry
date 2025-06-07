import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shopistry/services/all_products.dart';
import 'package:shopistry/widgets/custom_app_bar.dart';
import 'package:shopistry/widgets/product_widget.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});
  static String id = "ProductsPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Icon(Icons.shop_2, size: 64)),
            ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, ProductsPage.id);
              },
              title: Text("Products"),
              leading: Icon(FontAwesomeIcons.cartShopping),
            ),
            ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, ProductsPage.id);
              },
              title: Text("Categories"),
              leading: Icon(FontAwesomeIcons.cartShopping),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: AllProductsService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              clipBehavior: Clip.none,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 100),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 100,
                childAspectRatio: 1.8,
                crossAxisSpacing: 12,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ProductWidget(productModel: snapshot.data![index]);
              },
            );
          } else {
            return Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.deepPurple,
                size: 120,
              ),
            );
          }
        },
      ),
    );
  }
}
