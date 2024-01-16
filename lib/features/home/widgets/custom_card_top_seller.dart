import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/size_manager.dart';
import '../../../models/top_seller_model.dart';

class CustomCardTopSeller extends StatelessWidget {
  const CustomCardTopSeller({super.key, required this.topSellerModel});
  final TopSellerModel topSellerModel;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: BlurValues.b100, sigmaY: BlurValues.b100),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(PaddingValues.p9),
            height: HeightValues.h236,
            width: WidthValues.w157,
            color: AppColors.kColorWhite.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(topSellerModel.image),
                    height: HeightValues.h139,
                  ),
                ),
                const SizedBox(
                  height: HeightValues.h9,
                ),
                Text(
                  topSellerModel.title,
                  style: const TextStyle(
                      color: AppColors.kColorWhite,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFonts.sfRroDisplay,
                      fontSize: FontSize.f11),
                ),
                Text(
                  topSellerModel.subTitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFonts.sfRroDisplay,
                      fontSize: FontSize.f10),
                ),
                const SizedBox(
                  height: HeightValues.h9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.hearing_sharp, color: Colors.grey),
                        Text('${topSellerModel.count1}')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.heart,
                            color: topSellerModel.activeLike
                                ? AppColors.kColorRed
                                : Colors.grey),
                        Text('${topSellerModel.count2}')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
