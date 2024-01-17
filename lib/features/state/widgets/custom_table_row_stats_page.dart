import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/size_manager.dart';
import '../../../models/table_row_Model.dart';

class CustomTableRowStatsPage extends StatelessWidget {
  const CustomTableRowStatsPage({
    super.key,
    required this.tableRowModel,
  });

  final TableRowModel tableRowModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('${tableRowModel.order}'),
          const SizedBox(
            width: WidthValues.w10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(RadiusValues.r9),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(
                tableRowModel.image,
              ),
              width: WidthValues.w39,
              height: HeightValues.h39,
            ),
          ),
          const SizedBox(
            width: WidthValues.w13,
          ),
          SizedBox(
            width: 115,
            height: HeightValues.h39,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tableRowModel.name,
                  style: const TextStyle(
                      color: AppColors.kColorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: FontSize.f15,
                      fontFamily: AppFonts.sfRroDisplay),
                ),
                Text(
                  tableRowModel.subName,
                  style: const TextStyle(
                      fontSize: FontSize.f11,
                      fontFamily: AppFonts.sfRroDisplay),
                ),
              ],
            ),
          ),
          const SizedBox(width: WidthValues.w28_83),
          const Spacer(),
          const Icon(CupertinoIcons.link, size: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                tableRowModel.count,
                style: const TextStyle(
                    color: AppColors.kColorWhite,
                    fontSize: FontSize.f13,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                tableRowModel.present,
                style: TextStyle(
                  color:
                      tableRowModel.active ? Colors.green : AppColors.kColorRed,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
