import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          IconButton(onPressed: () async {}, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
