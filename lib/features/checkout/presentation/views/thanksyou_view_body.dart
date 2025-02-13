import 'package:flutter/material.dart';
import 'package:flutter_test_auth/core/resources/values_manager.dart';

class ThanksyouViewBody extends StatelessWidget {
  const ThanksyouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.primaryDark,
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p25),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              // height: AppQuery.height(context, 80),
              // width: AppQuery.width(context, 85),
              decoration: ShapeDecoration(
                  color: const Color(0xffD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
            Positioned(
              left: 20 + 8,
              right: 20 + 8,
              bottom: AppQuery.height(context, 12),
              child: Row(
                children: List.generate(
                  30,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        color: const Color.fromARGB(255, 121, 117, 117),
                        height: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                left: -20,
                bottom: AppQuery.height(context, 10),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
                right: -20,
                bottom: AppQuery.height(context, 10),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            const Positioned(
              top: -50,
              right: 0,
              left: 0,
              child: CircleAvatar(
                radius: AppSize.s50,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: AppSize.s40,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
