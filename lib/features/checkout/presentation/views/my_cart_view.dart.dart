import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/font_manager.dart';
import 'package:flutter_test_auth/core/resources/assets_manager.dart';
import 'package:flutter_test_auth/core/resources/color_manager.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';

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
        title: Text('My Cart', style: Styles.style25),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ProductImage(size: size),
            ProductInfo(price: _price, total: total),
            QuantityControls(
              quantity: _quantity,
              onIncrease: () => _updateQuantity(1),
              onDecrease: () => _updateQuantity(-1),
            ),
          ],
        ),
      ),
    );
  }
}

// ✅ Widget مستقلة لعناصر التحكم في الكمية
class QuantityControls extends StatelessWidget {
  const QuantityControls({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _quantityButton(Icons.remove, onDecrease),
        const SizedBox(width: 15),
        Text('$quantity', style: Styles.style25),
        const SizedBox(width: 15),
        _quantityButton(Icons.add, onIncrease),
      ],
    );
  }

  Widget _quantityButton(IconData icon, VoidCallback onPressed) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
      ),
    );
  }
}
