import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/size_manager.dart';

class CustomCategoryStatsPage extends StatelessWidget {
  const CustomCategoryStatsPage(
      {super.key, required this.title, required this.iconData});

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: PaddingValues.p10, horizontal: PaddingValues.p25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.kColorDarkBanafseg.withOpacity(.12),
        border: Border.all(
          color: AppColors.kColorPanafseg,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: AppColors.kColorGrey,
          ),
          const SizedBox(
            width: WidthValues.w2,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: FontSize.f12,
                fontWeight: FontWeight.bold,
                fontFamily: AppFonts.sfRroDisplay),
          ),
          const Icon(
            Icons.arrow_drop_down_sharp,
            color: AppColors.kColorGrey,
          ),
        ],
      ),
    );
  }
}
