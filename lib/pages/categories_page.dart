import 'package:flutter/material.dart';
import 'package:shopistry/services/all_categories.dart';
import 'package:shopistry/widgets/category_widget.dart';
import 'package:shopistry/widgets/custom_app_bar.dart';
import 'package:shopistry/widgets/loading_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});
  static String id = "CategoriesPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: FutureBuilder(
        future: AllCategoriesService().getAllCategories(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CategoryWidget(category: snapshot.data![index]);
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
