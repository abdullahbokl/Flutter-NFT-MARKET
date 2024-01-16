import 'package:flutter/material.dart';

import '../widgets/custom_background_image_on_boarding_page.dart';
import '../widgets/custom_component_on_boarding_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          CustomBackgroundImageOnBoardingPage(),
          CustomComponentOnBoardingPage(),
        ],
      )),
    );
  }
}
