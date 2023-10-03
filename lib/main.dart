import 'package:flutter/material.dart';
import 'package:integration/home_page.dart';

void main() {
  runApp(Fython());
}

class Fython extends StatelessWidget {
  const Fython({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
