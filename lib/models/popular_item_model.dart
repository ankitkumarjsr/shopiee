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
  PopularItem(images:imgbg7, name:"FootWears"),
  PopularItem(images:imgbg4, name:"Jewelleries"),
  PopularItem(images:imgbg6, name:"Beauty"),
  PopularItem(images:imgbg2, name:"Men's"),
  PopularItem(images:imgbg3, name:"Womens"),
];