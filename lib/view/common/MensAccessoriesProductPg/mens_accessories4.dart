import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/engghoodie_samplepic.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a1.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a2.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a3.dart';
import 'package:shopiee/view/common/MensAccessoriesProductPg/Payment_a4.dart';
import 'package:shopiee/view/common/MensWearProductPg/payment_2.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Accessories.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/GridView/FirstGrid/Components/Container2/Mens_FootWearPageBuilder.dart';
import '../../../models/GridView/FirstGrid/Components/Container3/Container3_Details.dart';
import '../../../models/GridView/FirstGrid/Components/Container3/mensaccessoriespagebuilder.dart';
import '../../../models/poster_item_model.dart';
import '../../screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';

class MensAccessoriesProduct4 extends StatelessWidget {
  MensAccessoriesProduct4({Key? key}) : super(key: key);


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
                  builder: (context) => MensAccessories(),
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
                Text("   Visit The Boldfit Store",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),),

                SizedBox(width: 85,),
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
                SizedBox(width: 5,),
                Text("3,458"),
              ],

            ),


            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10),
              child: Text("Boldfit Winter Wear for Women Winter Cap for Men Woolen "
                  "Cap for Men Beanie Cap for Men Winter Gloves for Men Winter"
                  " Clothing Set for Women & Men. Mufflers for Men Neck Warmer Winter Clothes for Women "),
            ),

            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(backgroundColor: Colors.red.shade900,
                      radius: 23,
                      child: Text("  81% \n  off",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),)),
                ),
                SizedBox(width: 290,),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1),
                  child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black)),
                      child: Icon(Icons.share_rounded,color: Colors.black,)),
                ),],
            ),

            Image(image: AssetImage(imgbg73)),

            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
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
                    "-81%",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "\u{20B9}299",
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
                    "\u{20B9}1599",
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
                    builder: (context) => Paymenta4(),
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
                Text("RK WORLD Infocom Pvt ",style: TextStyle(color:Colors.blue ,fontWeight: FontWeight.w500),),
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
              padding: const EdgeInsets.only(right: 310),
              child: Text("Sponsored",style: TextStyle(color: Colors.grey),),
            ),
            Row(
              children: [
                Image(image: AssetImage(imgbg70),height: 150,width: 180,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Handcuffs Winter Knit Beanie\nCap Hat Neck Warmer Scarf \nand Touchscreen Gloves \nSet for M...",style: TextStyle(fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Text("\u{20B9}599.00",style: TextStyle(color: Colors.red),),
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
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: Row(
                children:[
                  SizedBox(width: 11,),
                  Image(image: AssetImage(imgbg73)),
                  Text("+",style: TextStyle(fontSize: 30,color:Colors.grey),),
                  Image(image: AssetImage(imgbg84)),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: Row(
                children: [
                  SizedBox(width: 110,),
                  Text("Buy Both:\u{20B9}649.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
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
              padding: const EdgeInsets.only(right: 145),
              child: Text("Product image gallery ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg73)),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg134),fit:BoxFit.fill),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg135)),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg136)),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg137)),
            ),
            SizedBox(height: 18,),
            Container(
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width*0.90,
              child: Image(image: AssetImage(imgbg138)),
            ),
            Divider(thickness: 2,color: Colors.grey,),
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
                          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                        )),
                  ),
                  Text(
                    "Boldfit",
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
              padding: const EdgeInsets.only(right: 200),
              child: Text("Features & details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "Material Composition",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Cotton",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text(
                "Style",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 305),
              child: Text(
                "Regular",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text(
                "Neck Style",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 245),
              child: Text(
                "Hooded Neck",
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
              height: 10,
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
                  "3.5 out of 5",
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
                            " Cloth Quality",
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
                    maxRadius: 20, backgroundImage: AssetImage(imgbg73)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Paji151",
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
                  "Nice Cap ",
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
              child: Text(
                  "I encourage seller to make more  Winter Caps."),
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
