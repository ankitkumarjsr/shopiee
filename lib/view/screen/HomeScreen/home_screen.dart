import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopiee/constants/color_constant.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/address_model.dart';
import 'package:shopiee/models/container_poster_model.dart';
import 'package:shopiee/models/popular_item_model.dart';
import 'package:shopiee/models/user_model.dart';
import 'package:shopiee/view/screen/HomeScreen/components/bottom_navi_bar.dart';
import 'package:shopiee/view/screen/HomeScreen/components/home_appbar.dart';
import 'package:shopiee/view/screen/HomeScreen/components/pop_item_list.dart';
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
              Container(
                height: 35,
                width: double.infinity,
                color: appbarColor,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    TextButton(
                      onPressed: () {
                        print("Tapped");
                      },
                      child: const Text(
                        "Select A Location To See Product Availability",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const PopItemList(),
              SizedBox(
                // decoration:  BoxDecoration(border: Border.all(color: Colors.black,width: 5.0)),
                height: 320,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // 1st widget
                    PageView.builder(
                      controller: controller,
                      itemCount: posterItemList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          posterItemList[index].images,
                            height: 200,
                           width: double.infinity,
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                    // 2nd widget
                   SmoothPageIndicator(
                        controller: controller,
                        count: posterItemList.length,
                        effect: SwapEffect(
                          dotHeight: 16,
                          dotWidth: 16,
                          type: SwapType.yRotation,
                        ),
                        // effect: const WormEffect(
                        //   activeDotColor: Colors.black,
                        //   dotHeight: 12,
                        //   dotWidth: 12,
                        //   type: WormType.thin,
                        //   // strokeWidth: 5,
                        // ),

                    ),
                  ],
                ),
              ),

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
              Container(
                color: Colors.cyanAccent,
                 height: MediaQuery.of(context).size.height*0.26,
              width: double.infinity,
              child: Image.asset(imgbg24,fit: BoxFit.fill,),
            ),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),

            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(
                  "Starting ₹199  |  Deals on boy's fashions",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              const SizedBox(height: 5,),
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                 // color: Colors.yellow.shade200,
                width: double.infinity,

                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: containerPosterItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 6,),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              containerPosterItems[index].images,
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.45,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(containerPosterItems[index].name,textAlign: TextAlign.center,),
                      ],

                    );
                  },
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),
              Container(
                color: Colors.cyanAccent,
                height: MediaQuery.of(context).size.height*0.26,
                width: double.infinity,
                child: Image.asset(imgbg21,fit: BoxFit.fill,),
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

              Container(
                height: MediaQuery.of(context).size.height * 0.61,
                  color: Colors.blue.shade100,
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: containerposteritems1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.82,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              containerposteritems1[index].images,
                              height: MediaQuery.of(context).size.height * 0.240,
                              width: MediaQuery.of(context).size.width * 0.45,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(containerposteritems1[index].name,textAlign: TextAlign.center,),
                      ],

                    );
                  },
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 12,
                thickness: 3,
              ),

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
