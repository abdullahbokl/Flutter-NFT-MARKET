import '../../core/utils/app_images.dart';
import '../../models/category_model.dart';
import '../../models/collections_model.dart';
import '../../models/top_seller_model.dart';

class AppConstants {
  static List<CategoryModel> categoryList = [
    CategoryModel("art", AppImages.catHomePage1),
    CategoryModel("music", AppImages.catHomePage2),
    CategoryModel("virtual", AppImages.catHomePage3),
  ];
  static List<CollectionModel> collectionList = [
    CollectionModel(AppImages.trendingHomePage1, "3d art", true, 200),
    CollectionModel(AppImages.trendingHomePage2, "Portrait Art", true, 300),
    CollectionModel(AppImages.trendingHomePage3, "Abstract Art", false, 400)
  ];
  static List<TopSellerModel> topSellerList = [
    TopSellerModel(
      AppImages.topSeller1,
      "Abstract Pink",
      "subTitle 1",
      true,
      100,
      200,
    ),
    TopSellerModel(
      AppImages.topSeller2,
      "Abstract Pink 2",
      "subTitle 2",
      true,
      100,
      200,
    ),
    TopSellerModel(
      AppImages.topSeller3,
      "3",
      "subTitle 1",
      false,
      100,
      200,
    ),
  ];
}
