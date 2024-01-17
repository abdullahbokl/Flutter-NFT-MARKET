import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/size_manager.dart';

class ActiveSubTitleStatsPage extends StatelessWidget {
  const ActiveSubTitleStatsPage({
    super.key,
    required this.active,
    required this.title,
    required this.iconData,
  });

  final bool active;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: AppColors.kColorGrey,
            ),
            Text(
              AppStrings.ranking,
              style: TextStyle(
                color: active ? AppColors.kColorWhite : AppColors.kColorGrey,
                fontFamily: AppFonts.sfRroDisplay,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        if (active)
          Container(
            decoration: const BoxDecoration(
                color: AppColors.kColorDarkBanafseg,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -5),
                    color: AppColors.kColorDarkBanafseg,
                    blurRadius: 16,
                    spreadRadius: 1,
                  ),
                ]),
            width: WidthValues.w106,
            height: 3.6,
          ),
      ],
    );
  }
}
