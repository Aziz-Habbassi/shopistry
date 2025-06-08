import 'package:flutter/material.dart';
import 'package:shopistry/models/product_model.dart';
import 'package:shopistry/services/all_products.dart';
import 'package:shopistry/widgets/custom_app_bar.dart';
import 'package:shopistry/widgets/custom_drawer.dart';
import 'package:shopistry/widgets/loading_widget.dart';
import 'package:shopistry/widgets/product_widget.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key, this.service, this.title = "Shopistry"});
  static String id = "ProductsPage";
  final Future<List<ProductModel>>? service;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      drawer: title == "Shopistry"
          ? CustomDrawer()
          : null /*so if the title = "Shopistry" means that you're in home screen else it will shows the go back arrow so it wont be many views up each other (better performance) */,
      body: FutureBuilder(
        future: service ?? AllProductsService().getAllProducts(),
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
            return LoadingWidget();
          }
        },
      ),
    );
  }
}
