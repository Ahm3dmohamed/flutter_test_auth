import 'package:flutter/material.dart';
// import 'package:flutter_test_auth/home.dart';
import 'package:flutter_test_auth/features/checkout/presentation/views/my_cart_view.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
