import 'package:flutter/material.dart';

class EditLine extends StatelessWidget {
  const EditLine({
    super.key,
    required this.title,
    required this.oldtitle,
    required this.onchanged,
  });
  final String title;
  final String oldtitle;
  final Function(String) onchanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: TextField(
              onChanged: onchanged,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: oldtitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
