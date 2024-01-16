import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/app_router.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/size_manager.dart';

class CustomCardOnBoardingPage extends StatelessWidget {
  const CustomCardOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: BlurValues.b10, sigmaY: BlurValues.b10),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(PaddingValues.p25),
          height: HeightValues.h191,
          width: WidthValues.w306,
          color: AppColors.kColorWhite.withOpacity(0.1),
          child: Column(
            children: [
              const Text(
                AppStrings.titleCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.kColorWhite,
                    fontSize: FontSize.f19_82,
                    fontFamily: AppFonts.sfRroDisplay,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: HeightValues.h6,
              ),
              const Text(
                AppStrings.descCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.kColorLightWhite),
              ),
              const SizedBox(
                height: HeightValues.h10,
              ),
              Container(
                width: WidthValues.w198_2,
                decoration: BoxDecoration(
                    // color: Color(0xff97A9F6),
                    gradient: const LinearGradient(colors: [
                      Color(0xff97A9F6),
                      AppColors.kColorLightWhite
                    ]),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(RadiusValues.r40)),
                    border: Border.all(
                      color: AppColors.kColorWhite,
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusValues.r40),
                  child: BackdropFilter(
                    filter:
                        ImageFilter.blur(sigmaX: BlurValues.b100, sigmaY: 30),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.kHomePage);
                      },
                      child: const Text(AppStrings.btnTitleCardOnBoardingPage),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
