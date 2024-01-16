import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_constants.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/size_manager.dart';
import '../widgets/custom_card__collection.dart';
import '../widgets/custom_card_top_seller.dart';
import '../widgets/custom_category_home_page.dart';
import '../widgets/custom_sub_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListView(
        children: [
          SizedBox(
              height: HeightValues.h167_57,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCategoryHomePage(
                  title: AppConstants.categoryList[index].title,
                  image: AppConstants.categoryList[index].image,
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(width: WidthValues.w9),
                itemCount: 3,
              )),
          const SizedBox(height: HeightValues.h27),
          const CustomSubTitle(title: AppStrings.trendingCollectionHomePage),
          const SizedBox(height: 10),
          SizedBox(
            height: HeightValues.h194,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomCardCollection(
                  collectionModel: AppConstants.collectionList[index]),
              separatorBuilder: (context, index) =>
                  const SizedBox(width: WidthValues.w28_83),
              itemCount: AppConstants.collectionList.length,
            ),
          ),
          const SizedBox(height: HeightValues.h27),
          const CustomSubTitle(title: AppStrings.topSeller),
          const SizedBox(height: 7),
          SizedBox(
            height: HeightValues.h236,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopSeller(
                    topSellerModel: AppConstants.topSellerList[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      width: WidthValues.w28_83,
                    ),
                itemCount: AppConstants.collectionList.length),
          ),
          const SizedBox(height: HeightValues.h27),
          const CustomSubTitle(title: AppStrings.topSeller),
          const SizedBox(height: 7),
          SizedBox(
              height: HeightValues.h236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopSeller(
                    topSellerModel: AppConstants.topSellerList[index]),
                separatorBuilder: (context, index) =>
                    const SizedBox(width: WidthValues.w28_83),
                itemCount: AppConstants.collectionList.length,
              )),
        ],
      ),
    );
  }
}
