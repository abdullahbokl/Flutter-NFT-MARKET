import 'package:flutter/material.dart';

import '../../../core/utils/size_manager.dart';
import 'custom_card_on_boarding_page.dart';
import 'custom_title_on_boarding_page.dart';

class CustomComponentOnBoardingPage extends StatelessWidget {
  const CustomComponentOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: HeightValues.h70,
          ),
          CustomTitleOnBoardingPage(),
          Spacer(),
          CustomCardOnBoardingPage(),
          SizedBox(
            height: HeightValues.h70,
          ),
        ],
      ),
    );
  }
}
