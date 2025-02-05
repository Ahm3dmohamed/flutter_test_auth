// ✅ Widget مستقلة لعناصر التحكم في الكمية
import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/font_manager.dart';

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
