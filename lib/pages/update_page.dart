import 'package:flutter/material.dart';
import 'package:shopistry/models/product_model.dart';
import 'package:shopistry/services/update.dart';
import 'package:shopistry/widgets/custom_button.dart';
import 'package:shopistry/widgets/edit_line.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});
  static String id = "UpdatePage";

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String? title;
  double? price;
  String? image;
  String? desc;
  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Product",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 100),
        children: [
          EditLine(
            title: "title",
            oldtitle: product.title,
            onchanged: (data) {
              title = data;
            },
          ),
          EditLine(
            title: "Price",
            oldtitle: product.price.toString(),
            onchanged: (data) {
              price = double.parse(data);
            },
          ),
          EditLine(
            title: "description",
            oldtitle: product.description,
            onchanged: (data) {
              desc = data;
            },
          ),
          EditLine(
            title: "image",
            oldtitle: product.image,
            onchanged: (data) {
              image = data;
            },
          ),
          CustomButton(
            ontap: () async {
              await UpdateService().put(
                id: product.id,
                body: {
                  "title": title ?? product.title,
                  "price": price ?? product.price,
                  "description": desc ?? product.description,
                  "image": image ?? product.image,
                  "category": product.category,
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
