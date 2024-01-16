import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/app_strings.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.titleOnBoardingPage,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: AppFonts.sfRroDisplay,
        color: AppColors.kColorWhite,
        fontSize: FontSize.f36_04,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
