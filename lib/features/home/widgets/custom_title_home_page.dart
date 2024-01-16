import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/app_strings.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.titleHomePage,
      style: TextStyle(
        fontSize: FontSize.f25_23,
        fontFamily: AppFonts.sfRroDisplay,
        color: AppColors.kColorWhite,
      ),
    );
  }
}
