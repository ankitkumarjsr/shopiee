import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/engghoodie_samplepic.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a1.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a2.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a5.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a6.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a7.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a8.dart';
import 'package:shopiee/view/common/MensWearProductPg/payment_2.dart';
import 'package:shopiee/view/common/WomensMakeupProductPg/payment_wm1.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_makeups.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/GridView/FirstGrid/Components/Container1/MensWearAdidasHoodie_pics.dart';
import '../../../models/GridView/FirstGrid/Components/Container2/Mens_FootWearPageBuilder.dart';
import '../../../models/GridView/FirstGrid/Components/Container3/Container3_Details.dart';
import '../../../models/GridView/FirstGrid/Components/Container3/mensaccessoriespagebuilder.dart';
import '../../../models/GridView/SecondGrid/Components/Container_4_Details.dart';
import '../../../models/popular_item_model.dart';
import '../../../models/poster_item_model.dart';
import '../../screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';

class WomensMakeupProduct1 extends StatelessWidget {
  WomensMakeupProduct1({Key? key}) : super(key: key);


  final controller = PageController( keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        leading: IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WomensMakeup(),
                )),
            icon: Icon(Icons.arrow_back)),
        title: Text("Product Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12,),
            Row(
              children:[
                Text("   Visit The Lakme Store",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),),

                SizedBox(width:90,),
                RatingBar.builder(
                  itemSize: 15,
                  initialRating: 4.5,
                  minRating: 4.5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(width: 5,),
                Text("1,658"),
              ],

            ),


            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10),
              child: Text("Lakmé Perfecting Liquid Foundation, Shell, Long Lasting, Waterproof, Full Coverage, Lightweight Foundation For Oil Free & Dewy Skin, 27ml"),
            ),

            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(backgroundColor: Colors.red.shade900,
                      radius: 21,
                      child: Text("  21% \n  off",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                SizedBox(width: 290,),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1),
                  child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black)),
                      child: Icon(Icons.share_rounded,color: Colors.black,)),
                ),],
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  // 1st widget
                  PageView.builder(
                    controller: controller,
                    itemCount: foundationpics.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        foundationpics[index].images,
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      );
                    },
                  ),

                  // 2nd widget
                  SmoothPageIndicator(
                    controller: controller,
                    count:foundationpics.length,
                    effect: SwapEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      type: SwapType.yRotation,
                    ),
                  ),
                ],
              ),
            ),

            // Image(image: AssetImage(imgbg84),height: 320,width:420,),

            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Colour: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text("Coral",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            SizedBox(height: 5,),
        Container(
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.170,
                        width: MediaQuery.of(context).size.width*0.219,
                        decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black)),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                foundationcolors[index].images,
                                 height: MediaQuery.of(context).size.height*0.109,
                                 width: MediaQuery.of(context).size.width*0.209,
                                 fit: BoxFit.fill,
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                            Text(foundationcolors[index].text,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      // Image.asset(
                      //   popularItemList[index].images,
                      //   height: MediaQuery.of(context).size.height*0.109,
                      //   width: MediaQuery.of(context).size.width*0.209,
                      //   fit: BoxFit.fill,
                      //
                      // ),
                      const SizedBox(
                        height: 5,
                      ),
                      // Text(popularItemList[index].name)
                    ],
                  ),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: popularItemList.length,
          ),
        ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Design: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text("Foundation",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 265),
              child: Container(
                height: MediaQuery.of(context).size.height*0.22,
                width: MediaQuery.of(context).size.width*0.222,
                decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.orange)),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        imgbg142,
                        height: MediaQuery.of(context).size.height*0.109,
                        width: MediaQuery.of(context).size.width*0.209,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    Text("Foundation",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 3,),
                    Text("\u{20B9}141.76",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 3,),
                    Text("In Stock",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green),),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Deal",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "-21%",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "\u{20B9}141",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "M.R.P.:",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\u{20B9}180",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text(
                "Inclusive of all taxes",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),


            Row(
              children: [
                SizedBox(width: 12,),
                CircleAvatar(

                  backgroundColor: Colors.lime,
                  child: Icon(Icons.percent_outlined,color: Colors.black,),),
                SizedBox(width: 8,),
                Text("Save Extra",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.40,
                          height: 155,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2)),

                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Row(
                                children:[
                                  SizedBox(width: 4,),
                                  Text(firstlistdetails[index].icon,style: TextStyle(fontWeight: FontWeight.w500)),
                                  SizedBox(width: 2,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(firstlistdetails[index].heading,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ),],
                              ),

                              SizedBox(height: 3,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(firstlistdetails[index].description,style: TextStyle(fontWeight: FontWeight.w500),),
                              ),
                              SizedBox(height: 12,),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(firstlistdetails[index].more,style: TextStyle(color: Colors.blue.shade700,fontWeight: FontWeight.w500),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: mensfootsize.length,
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "FREE delievery",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900),
                  ),
                  Text(" Tuesday,  15 April",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(" on first order.",style: TextStyle(fontWeight: FontWeight.w400),),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Details",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "or fastest delievery",
                    style: TextStyle(
                        fontWeight: FontWeight.w400),
                  ),
                  Text(" Tommorow,  12 April",style: TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Order Within",
                    style: TextStyle(
                        fontWeight: FontWeight.w400),
                  ),
                  Text(" 5 hrs 21 mins.",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                  Text(
                    " Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children:[
                SizedBox(width: 9,),
                Icon(Icons.location_on_outlined,color: Colors.black,),
                Text("  Deliver To Ankit - Jamshedpur 832108",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue.shade900),),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "In Stock",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              //   onTap: () {
              //     showDialog(
              //       context: context,
              //       builder: (BuildContext dialogContext) {
              //         return ListTile(title: Text("ftf"),);
              //           // AlertDialog(
              //   backgroundColor: Colors.grey.shade300,
              //   content: Text('Product Added To Cart Successfully!!'),
              //   actions: <Widget>[
              //     TextButton(
              //       child: Text('Ok'),
              //       onPressed: () {
              //         Navigator.of(dialogContext)
              //             .pop(); // Dismiss alert dialog
              //       },
              //     ),
              //   ],
              // );
              //       },
              //     );
              //   },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.width*0.19,
                      color: Colors.grey.shade300,
                      child: Center(
                        child: Row(
                          children: [
                            Text("  Qty: 1",style: TextStyle(fontWeight: FontWeight.w500),),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 40,),
                    Text("\u{20B9}20 cashback for every extra unit \nyou buy (Up to \u{20B9}60)",style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      backgroundColor: Colors.grey.shade300,
                      content: Text('Product Added To Cart Successfully!!'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: Colors.amber),
                  child: Center(
                    child: Text(
                      "Add To Cart",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Paymentwm1(),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "Buy Now",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.lock,color: Colors.grey,),
                SizedBox(width: 11,),
                Text("Secure Transaction",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text("Sold By ",style: TextStyle(fontWeight: FontWeight.w500),),
                Text("MakeUp By Lakme ",style: TextStyle(color:Colors.blue ,fontWeight: FontWeight.w500),),
                Text("and ",style: TextStyle(fontWeight: FontWeight.w500),),
                Text("Fulfilled by Shopiee.",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 12,),
            Container(
              padding: const EdgeInsets.only(left: 10),
              // color: Colors.grey,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.grey.shade500),
              height: 50,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  // CircleAvatar(backgroundImage:AssetImage(imgbg18)),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    padding: const EdgeInsets.all(5),
                    width: 44,
                    height: 74,
                    child: Image.asset(imgbg18),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(" PAY ON \n DELIVERY", style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 18,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    padding: const EdgeInsets.all(6),
                    width: 44,
                    height: 74,
                    child: Image.asset(imgbg19),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(" EASY \n RETURNS", style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 18,
                  ),

                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    padding: const EdgeInsets.all(6),
                    width: 44,
                    height: 74,
                    child: Image.asset(imgbg20),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(" FREE DELIVERY \n ON FIRST ORDER",
                      style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold))
                ],
              ),
            ),

            SizedBox(height: 5,),
            Divider(thickness: 3,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.025,
                    width: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.red,
                            Colors.redAccent,
                            Colors.orange,
                          ]),
                    ),
                    child: Center(
                        child: Text(
                          "Top Brand -",
                          style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold),
                        )),
                  ),
                  Text(
                    "  LAKME",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.verified,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  "  88% positive rating from 5K+ customers.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.verified,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  "  1.5K+ recent orders from this brand.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.verified,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  "  2.5+ years on shopiee.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            Divider(thickness: 3,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text("Product Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Colour",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(width: 130,),
                Text(
                  "Pearl",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Finish Type",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(width: 90,),
                Text(
                  "Natural",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Item Form",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(width: 100,),
                Text(
                  "Liquid,Oil",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Country Of Origin",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(width: 42,),
                Text(
                  "India",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            Divider(thickness: 1,color: Colors.grey,),
            SizedBox(
              height: 18,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                  "Vitamin E And Silicon",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Water Resistant .Skin Type:All Skin Type",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Blends Effortlessly",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Spreads Evenly To Cover Spots And Blemishes",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Oil Free Formula",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ReadMoreText(
                "Light Weight:Maximum Shelf Life:25 Months Without Any Issues.....\nOne Of the most purshaced product",
                trimLines: 1,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: TextStyle(fontWeight: FontWeight.w500),
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),

            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Sponsored",style: TextStyle(color: Colors.grey),),
            ),
            Row(
              children: [
                Image(image: AssetImage(imgbg143),height: 150,width: 180,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Make an Eyeconic statement \nwith all the new Lakme Eyeconic\n Kajal and experience the \npower of beautiful eyes!!",style: TextStyle(fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Text("\u{20B9}2000.00",style: TextStyle(color: Colors.red),),
                    SizedBox(height: 5,),
                    Text("✓Prime",style: TextStyle(color: Colors.blue.shade800),)
                  ],
                ),
              ],
            ),
            Divider(thickness: 3,color: Colors.grey,),


            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Frequently Brought Together",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height*0.21,
              width: MediaQuery.of(context).size.width*0.93,
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: Row(
                children:[
                  SizedBox(width: 0,),
                  Image(image: AssetImage(imgbg142),height: 505,width: 103,),
                  Text("+",style: TextStyle(fontSize: 25,color:Colors.grey),),
                  Image(image: AssetImage(imgbg143),height: 505,width: 103,),
                  Text("+",style: TextStyle(fontSize: 25,color:Colors.grey),),
                  Image(image: AssetImage(imgbg145),height: 505,width: 103,),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.93,
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: Row(
                children: [
                  SizedBox(width: 50,),
                  Text("Buy all three:\u{20B9}450.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(width: 45,),
                  IconButton(onPressed: () => () {

                  }, icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,))
                ],
              ),
            ),
            SizedBox(height: 5,),
            Divider(thickness: 3,color: Colors.grey,),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 185),
              child: Text("You Might Also Like",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Sponsored",style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(height: 5,),
            Container(
              height: MediaQuery.of(context).size.height * 0.329,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.30,
                              width: MediaQuery.of(context).size.width*0.39,
                              // decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                      containerposterwomenmakeupitemsdetails[index].images,
                                      height: MediaQuery.of(context).size.height*0.159,
                                      width: MediaQuery.of(context).size.width*0.3,
                                      fit: BoxFit.fill,
                                    ),
                                  ),

                                  Text(containerposterwomenmakeupitemsdetails[index].text,style: TextStyle(fontWeight: FontWeight.bold),),
                                  // SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                  RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 3,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context,index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Row(
                                    children: [
                                      Text(containerposterwomenmakeupitemsdetails[index].price,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5,),
                                      Text(containerposterwomenmakeupitemsdetails[index].pricedis,style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey.shade800,fontWeight: FontWeight.bold),),

                                    ],
                                  ),
                                  Text("✓Prime",style: TextStyle(color: Colors.blue.shade800),)


                                ],
                              ),
                            ),
                            // Image.asset(
                            //   popularItemList[index].images,
                            //   height: MediaQuery.of(context).size.height*0.109,
                            //   width: MediaQuery.of(context).size.width*0.209,
                            //   fit: BoxFit.fill,
                            //
                            // ),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                            // Text(popularItemList[index].name)
                          ],
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: containerposterwomenmakeupitemsdetails.length,
                ),
              ),
            ),
            Divider(thickness: 1,color: Colors.grey,),

            // SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 145),
              child: Text("Product image gallery ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg142)),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg147)),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg148)),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg149)),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg150)),
            ),

            SizedBox(height: 18,),
            Divider(thickness: 2,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Sponsored",style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(height: 5,),
            Image(image: AssetImage(imgbg140),height: MediaQuery.of(context).size.height*0.252),
            Divider(thickness: 2,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Product Information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),


            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(height: 250,width: 350,
              child: Column(
                children: [
                  Divider(thickness: 1,color: Colors.grey,),
                  ListTile(
                    leading: Container(height: 100,width: 120,color: Colors.grey.shade300,
                        child: Center(child: Text("Manufacturer",style: TextStyle(fontWeight: FontWeight.w500),))),
                    title: Text("HUL"),

                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                  ListTile(
                    leading: Container(height: 100,width: 120,color: Colors.grey.shade300,
                        child: Center(child: Text("Country Of Origin",style: TextStyle(fontWeight: FontWeight.w500),))),
                    title: Text("India"),

                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                  ListTile(
                    leading: Container(height: 100,width: 120,color: Colors.grey.shade300,
                        child: Center(child: Text("ASIN",style: TextStyle(fontWeight: FontWeight.w500),))),
                    title: Text("B006LXBFGI"),

                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                ],
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Customer reviews",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 4.5,
                    minRating: 4.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "4.5 out of 5",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 16,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "40 global ratings",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Highly Rated By Customers For",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    color: Colors.grey.shade300,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: 140,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            " Good Quality",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: 199,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Comfortable Product",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Container(
                color: Colors.grey.shade300,
                height: MediaQuery.of(context).size.height * 0.03,
                width: 170,
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        " Value For Money",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Top reviews from India",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
                  height: 43,
                  width: 66,
                  child: Image(
                    image: AssetImage(imgbgin),
                    fit: BoxFit.cover,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.person_2_rounded,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Shopiee Customer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 5,
                    minRating: 5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Verified Purchase",
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Loved It",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text(
                "Reviewed in India on 10 June 2022",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 275),
              child: Text(" Colour: Coral"),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                  " Quality of this product is awesome. i totally loved this product"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Helpful",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Report",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white70,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                    maxRadius: 20, backgroundImage: AssetImage(imgbg43)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "akash1po1",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 4,
                    minRating: 4,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Verified Purchase",
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Nice ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.amber,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text(
                "Reviewed in India on 4 December 2021",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            SizedBox(
              height: 5,
            ),




            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 85),
              child: Text(
                  "I encourage to more make quality good "),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Helpful",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Report",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white70,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 1,color: Colors.grey,),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      backgroundColor: Colors.grey.shade300,
                      content: Text('Not More Than Two Reviews Are There Till Now'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: ListTile(
                leading: Text("See all reviews",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
            ),
            Divider(thickness: 1,color: Colors.grey,),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Looking For A Specific Info?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  labelText: "Search in reviews, Q&A....",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Customer Question",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: 330,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgbg5), fit: BoxFit.cover),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Q: Can u plz suggest me the shade for wheatish to fair skin tone?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          " Marble",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 206,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      " SELLER   |  6 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Q: My age is 18 which which size should i buy",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  Please buy a medium size",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      " SELLER   |  9 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Q: Is XXL Size avaliable for this hoodie",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  No Sir",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      " SELLER   |  1 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Q: Is there COD Avaliable for this product",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  No Sir,Only Online Payments",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      " SELLER   |  2 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
