import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/size_manager.dart';
import 'active_sub_title_stats_page.dart';

class CustomSubTitleStatePage extends StatelessWidget {
  const CustomSubTitleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        width: WidthValues.w0_2,
        color: AppColors.kColorLightBlue,
      ))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActiveSubTitleStatsPage(
              active: true,
              title: AppStrings.ranking,
              iconData: Icons.stacked_bar_chart),
          SizedBox(width: WidthValues.w28_83),
          ActiveSubTitleStatsPage(
            active: false,
            title: AppStrings.activity,
            iconData: Icons.stacked_line_chart,
          ),
        ],
      ),
    );
  }
}
