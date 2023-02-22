import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/constants/screen_list.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container3_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/GridView_Container_Poster1.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class MensAccessories extends StatelessWidget {
   MensAccessories({Key? key}) : super(key: key);

  int x=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back)),
        title: Text("Men's Accessories"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),)),
                child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 30,)),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 280,top: 10),
              child: Text("Top Rated",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 5,right:280),
              child: Container(
                height: 20,
                width:90,
                color: Colors.lime,
                child: Center(child: Text("Upto 33% Off",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),),
            ),
      Container(
        height: MediaQuery.of(context).size.height * 0.55,
        width: double.infinity,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: mensaccessgriddetails.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.99,

          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap:() {
                // Navigator.push(context,MaterialPageRoute(builder: (context) => firstGridScreens[index],));
              },
              child: Container(
                 decoration: BoxDecoration(border:Border.all(color: Colors.black45,width: 1)),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 6,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            mensaccessgriddetails[index].images,
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.width * 0.40,
                            fit: BoxFit.fill,
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(mensaccessgriddetails[index].pricedis,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
                      SizedBox(height: 3,),
                      Text(mensaccessgriddetails[index].price,textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough),),

                    ],

                  ),
                ),
              ),
            );
          },
        ),
      ),
            InkWell(
              onTap: () => print("tapped"),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 300),
                child: Text("See more",style: TextStyle(color: Colors.blueAccent),),
              ),)
,            Divider(height: 1, color: Colors.grey, thickness: 2,),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 270,top: 10),
              child: Text("Under \u{20B9}200",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mensaccessgrid2details.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.99,

                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap:() {
                      // Navigator.push(context,MaterialPageRoute(builder: (context) => firstGridScreens[index],));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 6,),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              mensaccessgrid2details[index].images,
                              height: MediaQuery.of(context).size.height * 0.18,
                              width: MediaQuery.of(context).size.width * 0.40,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(mensaccessgrid2details[index].pricedis,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(height: 3,),
                        Text(mensaccessgrid2details[index].price,textAlign: TextAlign.center,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough),),

                      ],

                    ),
                  );
                },
              ),
            ),
            Divider(color: Colors.grey,thickness: 2,),
      Padding(
        padding: const EdgeInsets.only(right: 240),
        child: GradientText(
          "More Results:-",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          colors: [
            Colors.black,
            Colors.pink,
          ],

        ),
      ),
            SizedBox(height: 25,),
            Container(

              width: double.infinity,
              // color: Colors.cyan,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 1,
                  mainAxisExtent:204,
                  mainAxisSpacing:15

                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap:() {
                      // Navigator.push(context,MaterialPageRoute(builder: (context) => firstGridScreens[index],));
                    },
                    child: Column(
                      children: [
                        Row(
                          children:[
                            Column(
                              children: [
                                ClipRRect(
                                    // borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      mensaccessgrid3details[index].images,
                                      height: 150,
                                      width: 170,
                                      fit: BoxFit.fill,
                                    )),
                                Text(mensaccessgrid3details[index].descrip,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              ],
                            ),
                            Column(
                              children: [
                                Text(mensaccessgrid3details[index].constext,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                Container(
                                  child: Center(child: Text(mensaccessgrid3details[index].deal,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)),
                                  color:Colors.red.shade900,
                                  width: MediaQuery.of(context).size.width*0.25,
                                  height: MediaQuery.of(context).size.height*0.025,
                                 ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
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
                                    Text(mensaccessgrid3details[index].price,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                    SizedBox(width: 8,),
                                    Text(mensaccessgrid3details[index].priced,style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey.shade900),),
                                    SizedBox(width: 8,),
                                     Text(mensaccessgrid3details[index].percen,style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                                 SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                 Row(
                                   children: [
                                     Text(mensaccessgrid3details[index].free,style: TextStyle(fontWeight:FontWeight.w500 ),),
                                     SizedBox(width: 5,),
                                     Icon(Icons.card_giftcard,size: 19,)
                                   ],
                                 ),


                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ],
                        ),
                        Divider(thickness: 3,color: Colors.grey,),
                      ],
                    ),

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
