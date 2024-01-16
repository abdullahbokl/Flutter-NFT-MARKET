import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/size_manager.dart';
import '../../../models/collections_model.dart';

class CustomCardCollection extends StatelessWidget {
  const CustomCardCollection({
    super.key,
    required this.collectionModel,
  });

  final CollectionModel collectionModel;

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
            height: HeightValues.h194,
            width: WidthValues.w157,
            color: AppColors.kColorWhite.withOpacity(0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(collectionModel.image),
                    height: HeightValues.h139,
                  ),
                ),
                const SizedBox(
                  height: HeightValues.h9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(collectionModel.title),
                    Row(
                      children: [
                        Icon(CupertinoIcons.heart_fill,
                            color: collectionModel.activeLike
                                ? AppColors.kColorRed
                                : Colors.grey),
                        Text('${collectionModel.countLike}')
                      ],
                    )
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
