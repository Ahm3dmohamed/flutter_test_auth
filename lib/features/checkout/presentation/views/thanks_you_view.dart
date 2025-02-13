import 'package:flutter/material.dart';
import 'package:flutter_test_auth/features/checkout/presentation/views/thanksyou_view_body.dart';

class ThanksYouView extends StatelessWidget {
  const ThanksYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ThanksyouViewBody(),
      ),
    );
  }
}
