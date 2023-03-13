import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopiee/constants/color_constant.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/GridView_Container_Poster1.dart';
import 'package:shopiee/models/GridView/SecondGrid/GridView_Container_poster2.dart';
import 'package:shopiee/models/GridView/ThirdGrid/GridView_Container_Poster3.dart';
import 'package:shopiee/models/address_model.dart';
import 'package:shopiee/models/popular_item_model.dart';
import 'package:shopiee/models/user_model.dart';
import 'package:shopiee/view/common/product_page.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Footwears.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Suit.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';
import 'package:shopiee/view/screen/HomeScreen/components/bottom_navi_bar.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/firstgrid_container.dart';
import 'package:shopiee/view/screen/HomeScreen/components/home_appbar.dart';
import 'package:shopiee/view/screen/HomeScreen/components/pop_item_list.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/Second/secondgrid_container.dart';
import 'package:shopiee/view/screen/HomeScreen/components/sliding_poster.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/poster_item_model.dart';

class Homescreen extends StatelessWidget {
   Homescreen({super.key});
  final controller = PageController( keepPage: true);
  var rootdb = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                // height: 10,
                width: 1000,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              const PopItemList(),
               SlidingPoster(),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                // color: Colors.grey,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey),
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
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MensFootwear(),)),
                child: Container(
                   height: MediaQuery.of(context).size.height*0.12,
                width: double.infinity,
                child: Image.asset(imgbg24,fit: BoxFit.contain,),
            ),
              ),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),


                Container(

                  decoration: BoxDecoration(border: Border.all(color: Colors.cyan.shade200,width: 10),borderRadius: BorderRadius.circular(10),color: Colors.white38),
                  child: Text(
                    "Starting ₹199  |  Deals on boy's fashions",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                ),


              const SizedBox(height: 5,),

              FirstGrid(),

              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),
              InkWell(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context) => MensSuits(),)),
                child: Container(
                  color: Colors.cyanAccent,
                  height: MediaQuery.of(context).size.height*0.26,
                  width: double.infinity,
                  child: Image.asset(imgbg21,fit: BoxFit.fill,),
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),
              const Padding(
                padding:EdgeInsets.only(right: 130),
                child: Text(
                  "Deals on women's fashion",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 20,
                    width: 88,
                    color: Colors.pinkAccent,
                    child:  Text("Up to 50% off",style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Deal of the Day",style: TextStyle(color: Colors.pink),)
                ],
              ),
              SizedBox(
                height:5,
              ),
             SecondGrid(),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),

              //below third grid
              Text("Popular Brands In Men's Wear",style: TextStyle(decoration: TextDecoration.underline,fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromRGBO(
                  6, 9, 47, 0.8)),),
              SizedBox(height: 5,),
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: double.infinity,
                color: Colors.amber.shade100,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: containerPosterItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => MensWear(),)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            ClipRRect(
                              child: Image.asset(
                                containerposteritems2[index].images,
                                height: MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.45,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(child: Image(
                              image: AssetImage(containerposteritems2[index].imagein),),
                               height: MediaQuery.of(context).size.height * 0.089,
                              width: MediaQuery.of(context).size.width*0.18,
                               top: 44,
                               left: 53,
                            ),

                          ],),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(containerposteritems2[index].name,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
                          // Text()
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320,top: 15),
                child: MouseRegion(
                  cursor: SystemMouseCursors.alias,
                  child: InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MensWear(),)),
                    child: Text("See All",style: TextStyle(decoration: TextDecoration.underline),),
                  ),
                  // onHover: SystemMouseCursors.click,
                ),
                ),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),
              SizedBox(height: 50,),

              TextButton(
                  onPressed: () async {
                    User user = User(
                        address: Address(addressLine: 'add', city: 'jsr', state: 'jh', pincode: '832108'),
                        name: 'subhojit',
                        email: 'test',
                        phoneno: 'test');
                    try{
                     await rootdb.add(user.toJson());
                    }
                    catch(e){
                      print(e.toString());
                    }

                  },
                  child: Text("New Button",))
          ]
          ),
        ),
      ),
    );
  }
}
