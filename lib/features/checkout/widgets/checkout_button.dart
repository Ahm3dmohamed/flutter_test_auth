import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/font_manager.dart';
import 'package:flutter_test_auth/core/resources/color_manager.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
    required this.total,
    required Size size,
  });

  final double total;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppQuery.width(context, 80),
      // height: AppQuery.height(context, 6), // 6% of screen height
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
            side: const BorderSide(color: ColorManager.textColor, width: 2),
          ),
          padding: EdgeInsets.symmetric(
            vertical: AppQuery.height(context, 1.6), // 2% of screen height
          ),
          elevation: 4,
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Total: \$${total.toStringAsFixed(2)}',
                style: Styles.style18.copyWith(color: Colors.white),
              ),
              backgroundColor: ColorManager.primaryDark,
            ),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Checkout",
              style: Styles.style22.copyWith(color: Colors.white),
            ),
            SizedBox(width: AppQuery.width(context, 2)),
            const Icon(Icons.payment, color: Colors.white, size: 24),
            SizedBox(width: AppQuery.width(context, 2)),
          ],
        ),
      ),
    );
  }
}
