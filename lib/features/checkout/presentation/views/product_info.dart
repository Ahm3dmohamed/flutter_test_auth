// ✅ Widget مستقلة لعرض معلومات المنتج
import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/font_manager.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.price, required this.total});

  final double price;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Product Name', style: Styles.style25),
        const SizedBox(height: AppSize.s1),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Price: \$$price', style: Styles.style25),
              Text('Total: \$${total.toStringAsFixed(2)}',
                  style: Styles.style25),
            ],
          ),
        ),
      ],
    );
  }
}
