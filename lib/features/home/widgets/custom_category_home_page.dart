import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/size_manager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage(
      {super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(RadiusValues.r27_03),
          child: Image(
            image: AssetImage(image),
            height: HeightValues.h167_57,
            width: WidthValues.w252_26,
          ),
        ),
        Positioned(
          bottom: PositionedValues.po,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(RadiusValues.r27_03),
              bottomRight: Radius.circular(RadiusValues.r27_03),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: BlurValues.b3, sigmaY: BlurValues.b3),
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        AppColors.kColorBlack.withOpacity(0),
                        AppColors.kColorBlack.withOpacity(.45),
                      ])),
                  height: HeightValues.h45_06,
                  width: WidthValues.w252_26,
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: FontSize.f19_82,
                        fontFamily: AppFonts.sfRroDisplay,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
