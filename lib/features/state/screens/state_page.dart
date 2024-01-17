import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/size_manager.dart';
import '../../../models/table_row_Model.dart';
import '../widgets/custom_category_stats_page.dart';
import '../widgets/custom_sub_title_state_page.dart';
import '../widgets/custom_table_row_stats_page.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight = MediaQuery.of(context).size.height - 250;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: HeightValues.h27),
          const CustomSubTitleStatePage(),
          const SizedBox(height: HeightValues.h27),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomCategoryStatsPage(
                title: AppStrings.allCategories,
                iconData: CupertinoIcons.table_badge_more,
              ),
              SizedBox(width: WidthValues.w20),
              CustomCategoryStatsPage(
                title: AppStrings.allChains,
                iconData: CupertinoIcons.link,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p9),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: BlurValues.b10, sigmaY: BlurValues.b10),
                child: Container(
                  color: AppColors.kColorWhite.withOpacity(0.1),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CustomTableRowStatsPage(
                        tableRowModel: TableRowModel(
                            index + 1,
                            index % 2 == 0
                                ? AppImages.catHomePage1
                                : AppImages.catHomePage2,
                            "name $index",
                            "subName  $index",
                            "${index * 10}",
                            "present",
                            index % 3 == 0 ? true : false)),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: HeightValues.h9),
                    itemCount: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
