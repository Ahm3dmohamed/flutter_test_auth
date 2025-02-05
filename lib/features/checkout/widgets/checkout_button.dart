import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/font_manager.dart';
import 'package:flutter_test_auth/core/resources/color_manager.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
    required this.total,
    required this.size,
  });

  final double total;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.black, width: 2), // Adjust color if needed
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(ColorManager.lightGrey),
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Total: \$${total.toStringAsFixed(0)}'),
          ),
        );
      },
      child: SizedBox(
        height: size.height * .06,
        width: size.width * .7,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Checkout",
                style: Styles.style22, // Ensure this style is defined
              ),
              const SizedBox(width: AppSize.s8),
              const Icon(Icons.payment),
            ],
          ),
        ),
      ),
    );
  }
}
