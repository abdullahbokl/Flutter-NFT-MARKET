import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/size_manager.dart';

class CustomPolygonButton extends StatelessWidget {
  const CustomPolygonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        decoration: ShapeDecoration(
          shape: const StarBorder.polygon(sides: 6, pointRounding: .5),
          color: Colors.white.withOpacity(.5),
        ),
        height: HeightValues.h70,
        width: HeightValues.h70,
        child: const Icon(
          CupertinoIcons.plus,
          color: AppColors.kColorWhite,
        ),
      ),
    );
  }
}
