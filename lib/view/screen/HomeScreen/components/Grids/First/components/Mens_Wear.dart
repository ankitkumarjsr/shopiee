import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container2_Details.dart';
import 'package:shopiee/view/common/product_page.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

class MensWear extends StatelessWidget {
  const MensWear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.black)),
            elevation: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.lime, Colors.white]),
              ),
            ),
            title: Text(
              "Men's Wear",
              style: TextStyle(
                  color: Color.fromRGBO(3, 35, 56, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ));
                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.deepOrange,
                          Colors.orange,
                          Colors.amber,
                           Colors.orangeAccent,
                           Colors.white,
                        ]),
                    border: Border.all(color: Colors.black, width: 1)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text(
                        "Limited Time Deals",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.black,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Offer ends soon")
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.29,
                      // color: Colors.blue,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    menswearList1details[index].images,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(menswearList1details[index].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(menswearList1details[index].price,style: TextStyle(decoration: TextDecoration.lineThrough),),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        menswearList1details[index].pricedis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(menswearList1details[index].peroff,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(15, 144, 15, 1.0),
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: menswearList1details.length,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: containerposteritemsdetails1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductPage(),)),
                        child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  containerposteritemsdetails1[index].images,
                                  height:
                                      MediaQuery.of(context).size.height * 0.28,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  fit: BoxFit.fill,
                                )),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              containerposteritemsdetails1[index].Text,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              containerposteritemsdetails1[index].Description,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                Text(containerposteritemsdetails1[index].Price,style: TextStyle(decoration: TextDecoration.lineThrough),),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  containerposteritemsdetails1[index].Pricedis,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  containerposteritemsdetails1[index].Peroff,
                                  style: TextStyle(
                                      color: Color.fromRGBO(15, 149, 6, 1.0),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                            top: 10,
                            right: 12,
                            child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 5),
                          child: Container(
                            height: 15,
                            width: 56,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Colors.purple.shade500,
                                      Colors.cyan,
                                    ]),
                                border: Border.all(color: Colors.black, width: 1)),
                            child: Center(
                                child: Text(
                              "Best seller",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ));
                  },
                ),
              ),
              Divider(color: Colors.grey,thickness: 3),
              Padding(
                padding: const EdgeInsets.only(right: 320,bottom: 5),
                child: Text("Sponsored",style: TextStyle(color: Colors.grey.shade700,fontSize: 12,fontWeight: FontWeight.bold),),
              ),
               Image.asset(imgbg64,
                fit: BoxFit.cover,

               ),
              Divider(color: Colors.grey,thickness: 3),
              // Padding(
              //   padding: const EdgeInsets.only(right: 240),
              //   child: Text("MORE RESULTS",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
