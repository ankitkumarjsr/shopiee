import 'package:shopiee/models/GridView/FirstGrid/Components/Container1_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container2_Details.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Footwears.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Suit.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens-jewellery.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_Clothes.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_makeups.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:shopiee/view/screen/ProfileScreen/profile_screen.dart';

final listOfScreens = [
  Homescreen(),
  ProfileScreen(),
  CartScreen(),
];

final PopItemsScreen=[
  MensFootwear(),
  WomensJewellery(),
  WomensMakeup(),
  MensWear(),
  WomensClothes(),
];

final firstGridScreens =[
  MensWear(),
  MensFootwear(),
  MensAccessories(),
  MensSuits(),
];
final secondGridScreens=[
  WomensClothes(),
  WomensAccessories(),
  WomensJewellery(),
   WomensMakeup(),
];