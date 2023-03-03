import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/Container1_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container2/Container2_Details.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/mens_accessories1.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/mens_accessories2.dart';
import 'package:shopiee/view/common/MensFootWearProductPg/mens_footwear_1.dart';
import 'package:shopiee/view/common/MensWearProductPg/mens_wear_1.dart';
import 'package:shopiee/view/common/MensWearProductPg/mens_wear_14.dart';
import 'package:shopiee/view/common/MensWearProductPg/mens_wear_16.dart';
import 'package:shopiee/view/common/MensWearProductPg/mens_wear_17.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Footwears.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Suit.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/firstgrid_container.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens-jewellery.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_Clothes.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_makeups.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:shopiee/view/screen/ProfileScreen/profile_screen.dart';

import '../view/common/MensAccessoriesProductPg/mens_accessories3.dart';
import '../view/common/MensAccessoriesProductPg/mens_accessories4.dart';
import '../view/common/MensAccessoriesProductPg/mens_accessories5.dart';
import '../view/common/MensAccessoriesProductPg/mens_accessories6.dart';
import '../view/common/MensAccessoriesProductPg/mens_accessories7.dart';
import '../view/common/MensAccessoriesProductPg/mens_accessories8.dart';
import '../view/common/MensFootWearProductPg/mens_footwear_2.dart';
import '../view/common/MensFootWearProductPg/mens_footwear_3.dart';
import '../view/common/MensFootWearProductPg/mens_footwear_4.dart';
import '../view/common/MensFootWearProductPg/mens_footwear_5.dart';
import '../view/common/MensFootWearProductPg/mens_footwear_6.dart';
import '../view/common/MensWearProductPg/mens_wear_10.dart';
import '../view/common/MensWearProductPg/mens_wear_11.dart';
import '../view/common/MensWearProductPg/mens_wear_12.dart';
import '../view/common/MensWearProductPg/mens_wear_13.dart';
import '../view/common/MensWearProductPg/mens_wear_15.dart';
import '../view/common/MensWearProductPg/mens_wear_18.dart';
import '../view/common/MensWearProductPg/mens_wear_2.dart';
import '../view/common/MensWearProductPg/mens_wear_3.dart';
import '../view/common/MensWearProductPg/mens_wear_4.dart';
import '../view/common/MensWearProductPg/mens_wear_5.dart';
import '../view/common/MensWearProductPg/mens_wear_6.dart';
import '../view/common/MensWearProductPg/mens_wear_7.dart';
import '../view/common/MensWearProductPg/mens_wear_8.dart';
import '../view/common/MensWearProductPg/mens_wear_9.dart';

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

final FirstGridMensWearProductScreen =[
  MensWearProduct1(),
  MensWearProduct2(),
  MensWearProduct3(),
  MensWearProduct4(),
  MensWearProduct5(),
  MensWearProduct6(),
  MensWearProduct7(),
  MensWearProduct8(),
  MensWearProduct9(),
  MensWearProduct10(),
  MensWearProduct11(),
  MensWearProduct12(),

];

final FirstGridMensWearProductScreen1 =[

  MensWearProduct13(),
  MensWearProduct14(),
  MensWearProduct15(),
  MensWearProduct16(),
  MensWearProduct17(),
  MensWearProduct18(),

];

final FirstGridMensFootwearProductScreen1=[

MensFootwearProduct1(),
  MensFootwearProduct2(),
  MensFootwearProduct3(),
  MensFootwearProduct4(),
  MensFootwearProduct5(),
  MensFootwearProduct6(),


];

final FirstGridMensAccessoriesFirstProductScreen=[

  MensAccessoriesProduct1(),
  MensAccessoriesProduct2(),
  MensAccessoriesProduct3(),
  MensAccessoriesProduct4(),
];

final FirstGridMensAccessoriesSecondProductScreen=[
  MensAccessoriesProduct5(),
  MensAccessoriesProduct6(),
  MensAccessoriesProduct7(),
  MensAccessoriesProduct8(),
];

final secondGridScreens=[
  WomensClothes(),
  WomensAccessories(),
  WomensJewellery(),
   WomensMakeup(),
];