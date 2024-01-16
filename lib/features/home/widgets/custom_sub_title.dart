import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/size_manager.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p14),
          child: Text(
            style: const TextStyle(
              color: AppColors.kColorWhite,
              fontSize: FontSize.f17,
              fontWeight: FontWeight.bold,
              fontFamily: AppFonts.sfRroDisplay,
            ),
            title,
            textAlign: TextAlign.start,
          ),
        ));
  }
}
