import 'package:flutter/material.dart';
import 'package:shopistry/models/product_model.dart';
import 'package:shopistry/pages/update_page.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  Color heartColor = Colors.black;
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          UpdatePage.id,
          arguments: widget.productModel,
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple,
              blurRadius: 26,
              offset: Offset(10, 10),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  widget.productModel.title,
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productModel.price.toString() + r"$",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          liked = !liked;
                          if (liked) {
                            heartColor = Colors.red;
                          } else {
                            heartColor = Colors.black;
                          }
                        });
                      },
                      icon: Icon(Icons.favorite, color: heartColor),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 10,
              top: -65,
              child: Image.network(
                widget.productModel.image,
                height: 110,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
