import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/engghoodie_samplepic.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a1.dart';
import 'package:shopiee/view/common/MensWearProductPg/payment_2.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc1.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc2.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc3.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc4.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc5.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc6.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc7.dart';
import 'package:shopiee/view/common/WomensWearProductPg/payment_wc8.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/componets/womens_Clothes.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/GridView/FirstGrid/Components/Container2/Mens_FootWearPageBuilder.dart';
import '../../../models/GridView/FirstGrid/Components/Container3/Container3_Details.dart';
import '../../../models/GridView/FirstGrid/Components/Container3/mensaccessoriespagebuilder.dart';
import '../../../models/poster_item_model.dart';
import '../../screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';

class WomenWearProduct8 extends StatelessWidget {
  WomenWearProduct8({Key? key}) : super(key: key);

  final controller = PageController(keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.blue, Colors.white]),
          ),
        ),
        // backgroundColor: Colors.blue.shade800,
        leading: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WomensClothes())),
            icon: Icon(Icons.arrow_back,color: Colors.blue.shade900,)),
        title:  GradientText(
          "Product Page",
          colors: [
            Colors.deepOrange,
            Colors.amber,
            Colors.orange,
            Colors.deepOrange,
          ],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.red.shade900,
                      radius: 23,
                      child: Text(
                        "  30% \n  off",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ),
                SizedBox(
                  width: 290,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1),
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 0.1, color: Colors.black)),
                      child: Icon(
                        Icons.share_rounded,
                        color: Colors.black,
                      )),
                ),
              ],
            ),

            Image(
                image: AssetImage(imgbg104),
                height: MediaQuery.of(context).size.height * 0.65),

            Row(
              children: [
                Text(
                  "    Brand:DHRUVI TRENDZ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blue),
                ),
                SizedBox(
                  width: 60,
                ),
                RatingBar.builder(
                  itemSize: 20,
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
                SizedBox(
                  width: 1,
                ),
                Text("3,458"),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10),
              child: Text(
                  "DHRUVI Trendz Women's Casual Top Shirts Print Top Basic Summer Women Tops"),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 130,
                  decoration: BoxDecoration(color: Colors.grey.shade900,),
                  child: Row(
                    children: [
                      SizedBox(width: 3,),
                      Text(
                        "  Shopiee's ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      Text(
                        " Choice ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Text("for ''Women Casual Top''"),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(height: 10,),

            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(backgroundColor: Colors.white,radius: 34,child: CircleAvatar(radius: 31,backgroundImage: AssetImage(imgbg104),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.24,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.pink,border: Border.all(color: Colors.lime,width: 3)),
                          child: Center(
                            child: Row(
                              children: [
                                Text(" Limited Time",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("-30% ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),),
                        SizedBox(width: 10,),
                        Text("\u{20B9}1399.00",style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Text(
                      "\u{20B9}1999.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    // CircleAvatar(backgroundColor: Colors.black,radius: 33,child: CircleAvatar(radius: 30,backgroundImage: AssetImage(imgbg62),)),
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(backgroundColor: Colors.black,radius: 34,child: CircleAvatar(radius: 31,backgroundImage: AssetImage(imgbg104),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.24,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.pink,border: Border.all(color: Colors.lime,width: 3)),
                          child: Center(
                            child: Row(
                              children: [
                                Text(" Limited Time",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("-30% ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),),
                        SizedBox(width: 10,),
                        Text("\u{20B9}1399.00",style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                    Text(
                      "\u{20B9}1999.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Deal",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
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
                    "-30%",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "\u{20B9}1399",
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
                    "\u{20B9}1999",
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

            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Colors.lime,
                  child: Icon(
                    Icons.percent_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Save Extra",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
                          width: MediaQuery.of(context).size.width * 0.40,
                          height: 155,
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(firstlistdetails[index].icon,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      firstlistdetails[index].heading,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  firstlistdetails[index].description,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(
                                  firstlistdetails[index].more,
                                  style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.w500),
                                ),
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
            SizedBox(
              height: 5,
            ),
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
                  Text(
                    " Tuesday,  15 April",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " on first order.",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Details",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "or fastest delievery",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " Tommorow,  12 April",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Order Within",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " 5 hrs 21 mins.",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
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
              children: [
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                ),
                Text(
                  "  Deliver To Ankit - Jamshedpur 832108",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.blue.shade900),
                ),
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
                        fontWeight: FontWeight.bold, color: Colors.green),
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
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.19,
                      color: Colors.grey.shade300,
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              "  Qty: 1",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "\u{20B9}20 cashback for every extra unit \nyou buy (Up to \u{20B9}60)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
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
                    builder: (context) => Paymentwc8(),
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
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  "Secure Transaction",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
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
                Text(
                  "Sold By ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "RK WORLD Infocom Pvt ",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
                Text(
                  "and ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Fulfilled by Shopiee.",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
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
                  const Text(" PAY ON \n DELIVERY",
                      style:
                      TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
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
                  const Text(" EASY \n RETURNS",
                      style:
                      TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
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
                      style:
                      TextStyle(fontSize: 11, fontWeight: FontWeight.bold))
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Sponsored",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              children: [
                Image(
                  image: AssetImage(imgbg69i),
                  height: 150,
                  width: 180,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Handcuffs Winter Knit Beanie\nCap Hat Neck Warmer Scarf \nand Touchscreen Gloves \nSet for M...",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\u{20B9}599.00",
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "✓Prime",
                      style: TextStyle(color: Colors.blue.shade800),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Frequently Brought Together",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.91,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              child: Row(
                children: [

                  Image(image: AssetImage(imgbg104)),
                  // SizedBox(
                  //   width: 1,
                  // ),
                  Text(
                    "+",
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  // SizedBox(
                  //   width: 1,
                  // ),
                  Image(image: AssetImage(imgbg101)),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Buy Both:\u{20B9}1999.00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  IconButton(
                      onPressed: () => () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
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
                            Colors.blue,
                            Colors.white,
                          ]),
                    ),
                    child: Center(
                        child: Text(
                          "Top Brand-",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )),
                  ),
                  Text(
                    "Sanganeri",
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
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Features & details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text(
                "Material Composition",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text(
                "GoSriKi Kanjivaram soft silk",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text(
                "Weave Type",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 275),
              child: Text(
                "Jacquard",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Care Instructions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 235),
              child: Text(
                "Dry Clean Only",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 233),
              child: Text(
                "Country Of Origin",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "India",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "About This Item",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                    "Premium Export Quality 320 GSM Biowashed Cotton \nwith Brushed Fleece Inside and Belly Pockets. Long\n-lasting anti-fading high-definition Digital Prints",
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
                    "Please check both our tshirts and hoodie SIZE CHARTS \nbefore ordering - hoodies are generally worn a bit \nloose compared to tshirts, so you'll \nideally need to pick Chest Size+2 inches.)",
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
                    "We recommend you to check our complete collection \non our insta/site.We print custom designs not just on \ntshirts but on everything.",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text(
                "Description",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 18),
            //   child: Text(
            //       This winter Indian homegrown brand ADRO brings you the best quality 100% cotton hooded sweatshirts
            //       to keep you warm. Made in India Product for the Indian market at the Best Prices. Pair it with Jeans/Joggers or
            //        Shorts and this sweatshirts/hoodie made of soft fabric will make other guys go green with envy. We at ADRO offers
            //        Top Quality casual wear in the widest variety which makes it easy to choose and at the prices that are easy to reach.
            //        ADRO products are made of Premium Fabrics which are Eco-Friendly to ensure the Best Quality and Great Comfort.
            //        ADRO deals in Men's Sweatshirts, Men's Printed T-Shirts, Full Sleeve T-Shirts, Polo T-Shirts, Hoodies for men.
            //       We also in plan to add Men's Shirts, Jeans and Chinos/Shorts to keep you updated with trends. ADRO - Keep Inventing!!),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ReadMoreText(
                "Our designs are not the usual pop culture trends, but our own twisty interpretation of trending themes.",
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
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "The Maximum Order Quantity For This Product Is Limited To 5 Units Per Customer ",
                style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                " Please Note That The Orders Which Exceed The Quantity Limit Will Be AUTO - Cancelled .This Is Applicable Acress Sellers.",
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 285),
                  child: Text("Sponsored ",style: TextStyle(color: Colors.grey.shade700),),
                ),
                Row(
                  children:[
                    Column(
                      children: [
                        ClipRRect(
                          // borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              imgbg101,
                              height: 190,
                              width: 160,
                              fit: BoxFit.fill,
                            )),
                        // Text(mensaccessgrid3details[index].descrip,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Save 10%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        Text("For Modern Indian Women",style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        Container(
                          child: Center(child: Text("Deal Of The Day",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)),
                          color:Colors.deepOrange,
                          width: MediaQuery.of(context).size.width*0.25,
                          height: MediaQuery.of(context).size.height*0.025,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 4.5,
                          itemSize: 25,
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
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("\u{20B9}999",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                            SizedBox(width: 8,),
                            Text("\u{20B9}899",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey.shade900),),
                            SizedBox(width: 8,),
                            Text("10%",style: TextStyle(color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                        Row(
                          children: [
                            Text("Free Delievery By Shopiee",style: TextStyle(fontWeight:FontWeight.w500 ),),
                            SizedBox(width: 5,),
                            Icon(Icons.card_giftcard,size: 19,)
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        Text("  Shop now >",style: TextStyle(color: Colors.blue),)


                      ],

                    ),
                  ],
                ),

              ],
            ),

            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Product Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: 10,),
            ClipRRect(
              // borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imgbg103,
                  height: 200,
                  width: 160,
                  fit: BoxFit.fill,
                )),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Most Popular Green Soft Copper Zari Silk Kurta For Women Latest Design",style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "This green soft copper zari silk sarees for women latest design wear for ceremony, and marriage function. This Beautiful fancy saree latest design silk saree for wedding wear too. Kanchipuram silk saree for women and kanjivaram soft silk sarees for women latest design are the most popular saree for any occasion."
                    "Indian occasions are grand affairs with celebrations stretching across several days. The big fat occasions are all about magnificent setups and foods to savor, wherein a massive crowd is dressed up with extravagance. To pull off a perfect occasion requires meticulous planning along with choosing the best outfits. Being said that, if you are planning occasion wear, this beautiful Soft Kanjivaram Kanchipuram green copper zari silk saree for any occasion would be definitely on your mind.",style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10,),
            ClipRRect(
              // borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imgbg103,
                  height: 200,
                  width: 160,
                  fit: BoxFit.fill,
                )),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Kurta Kanchiputram Latest Design Green Soft Copper Zari Silk Saree For Women",style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Kurta Kanchipuram Latest Design Green Soft Copper Zari Silk Saree for Women"
                    "Kanchipuram silk sarees, also known as kanjivaram silk sarees, are woven from pure mulberry silk. The silk is called pattu in Tamil and so the sarees are also called Kanchipuram pattu sarees. The Kanchipuram Pattu sarees are woven with beautiful motifs such as peacock, paisley, Annapakshi, Chakram, Yali, and floral motifs. Each motif has its significance and adds value to the silk. Kanchipuram sarees are seen as exquisite because of their distinguished borders, richly woven zari pallu, and beautiful motifs woven in silk. Kanchipuram or kanjivaram sarees are also loved for their traditional designs."

                    "\nKanjivaram Kanchipuram and Soft Silk and silk sarees are women's current best friends, originating from India, and are now winning hearts in India. Their richness in the jacquard work makes them one of the most gorgeous saree. This beautiful soft Kanjivaram Kanchipuram green copper silk saree is the most go-to choice for any function.",style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10,),
            ClipRRect(
              // borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imgbg106,
                  height: 200,
                  width: 160,
                  fit: BoxFit.fill,
                )),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                "Why do We think Saree for any occasion ?",style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "You would have seen many gorgeous women wearing sarees during ceremonies and celebrations. This is because the saree is the symbol of love and togetherness. Furthermore, it is the color of passion, strength, and beauty that also signifies the Goddess, thereby making the Soft silk saree for weddings more deep-rooted in Indian culture and heritage. Being said that, the timeless and elegant complements all shapes, structures, complexions, and ages. Therefore, making the versatile palette the best choice for traditional ceremonies, such as Indian weddings."

                    "\nMoreover, the fact that saree, in all its different versions and shades, stands apart with its beautiful and ravishing feel. All these factors are enough for anyone to simply fall in love with the saree when it comes to traditional wear and celebrations.",style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
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
                "32 global ratings",
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
                            " Kurta Quality",
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
                SizedBox(
                  width: 25,
                ),
                Container(
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.black54)),
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
              padding: const EdgeInsets.only(right: 270),
              child: Text("  Colour:Black"),
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
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
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
                        "Report",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.bold),
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
                    maxRadius: 20, backgroundImage: AssetImage(imgbg7)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "qreeeei151",
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
                  "Nice Kurta ",
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
              padding: const EdgeInsets.only(right: 50),
              child: Text("I encourage seller to make more Kurta"),
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
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
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
                        "Report",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      backgroundColor: Colors.grey.shade300,
                      content:
                      Text('Not More Than Two Reviews Are There Till Now'),
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
                leading: Text(
                  "See all reviews",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),

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
                    padding: const EdgeInsets.only(right: 170),
                    child: Text(
                      "Q: What is fabric",
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
                          "  100% Cotton 300 GSM Fabric",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 26,
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
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Q: Is XXL Size avaliable for this saree  ",
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
