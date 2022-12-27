import "package:shopiee/constants/images_constants.dart";
class PopularItem{
  final String images;
  final String name;

  PopularItem(
  {
    required this.images,
    required this.name,
});
}
List<PopularItem> popularItemList=[
  PopularItem(images:imgbg1, name:"Mobiles"),
  PopularItem(images:imgbg2, name:"Fashion"),
  PopularItem(images:imgbg3, name:"Deals"),
  PopularItem(images:imgbg4, name:"Electronics"),
  // PopularItem(images:imgbg5, name:"Mini Tv"),
  PopularItem(images:imgbg6, name:"Beauty"),
  PopularItem(images:imgbg7, name:"Books,Toys"),
  PopularItem(images:imgbg8, name:"Essentials"),
  PopularItem(images:imgbg9, name:"Grocery"),
];