import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Please wait ..",
              style: TextStyle(
                letterSpacing: 3,
              ),
            ),
            Lottie.asset(
              "C:UsersLENOVODocuments\flutter tpanimationassetAnimation - 1701420637391.json",
              height: 350,
              width: 350,
            ),
            const Text("we are cuurebtly checking our records"),
          ],
        )
      ]),
    );
  }
}
