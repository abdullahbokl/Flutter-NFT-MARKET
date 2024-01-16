import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';

class CustomBackgroundImageOnBoardingPage extends StatelessWidget {
  const CustomBackgroundImageOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(
        AppImages.onBoardingBackgroundImage,
      ),
    );
  }
}
