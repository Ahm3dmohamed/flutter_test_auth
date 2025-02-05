import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/font_manager.dart';
import 'package:flutter_test_auth/core/resources/color_manager.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';
import 'package:flutter_test_auth/features/checkout/widgets/checkout_button.dart';
import 'package:flutter_test_auth/features/checkout/widgets/product_image.dart';
import 'package:flutter_test_auth/features/checkout/widgets/product_info.dart';
import 'package:flutter_test_auth/features/checkout/widgets/quantity_control.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  int _quantity = 0;
  final double _price = 100;

  void _updateQuantity(int change) {
    setState(() {
      _quantity = (_quantity + change).clamp(0, 999);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double total = _price * _quantity;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text('My Cart',
            style: Styles.style25.copyWith(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ProductImage(size: size),
          ProductInfo(price: _price, total: total),
          QuantityControls(
            quantity: _quantity,
            onIncrease: () => _updateQuantity(1),
            onDecrease: () => _updateQuantity(-1),
          ),

          const SizedBox(height: AppSize.s16),
//  Add a button to checkout
          CheckoutButton(total: total, size: size),
        ],
      ),
    );
  }
}
