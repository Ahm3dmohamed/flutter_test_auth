import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/resources/color_manager.dart';
import 'package:flutter_test_auth/features/checkout/presentation/views/payment_details_view_body.dart';
import 'package:flutter_test_auth/core/widgets/build_appbar.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.primary,
      appBar: BuildAppBar(
        title: "My Details",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
