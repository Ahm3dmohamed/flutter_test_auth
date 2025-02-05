// ✅ Widget مستقلة لعرض صورة المنتج
import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/resources/assets_manager.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Appmargin.m16),
      height: size.height * 0.5,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(ImageAssets.productImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
