import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: Text(category, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
