 import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopiee/view/common/WomensMakeupProductPg/women_makeup_Product_6.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../../../constants/images_constants.dart';
import '../../../../../../../constants/screen_list.dart';
import '../../../../../../../models/GridView/FirstGrid/Components/Container3/Container3_Details.dart';
import '../../../../../../../models/GridView/SecondGrid/Components/Container_4_Details.dart';
import '../../../../../../common/WomensMakeupProductPg/women_makeup_Product_1.dart';
import '../../../../../../common/WomensMakeupProductPg/women_makeup_Product_2.dart';
import '../../../../../../common/WomensMakeupProductPg/women_makeup_Product_3.dart';
import '../../../../../../common/WomensMakeupProductPg/women_makeup_Product_4.dart';
import '../../../../../../common/WomensMakeupProductPg/women_makeup_Product_5.dart';
import '../../../../../CartScreen/cart_screen.dart';
class WomensMakeup extends StatelessWidget {
  const WomensMakeup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: AppBar(
            elevation: 0,
            toolbarHeight: 75,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.pinkAccent,Colors.white]),

              ),
            ),
            title: Text(
              "Women's Makeup",
              style: TextStyle(
                  color: Color.fromRGBO(8, 17, 51, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
             leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder:(context) => Homescreen(),)), icon: Icon(Icons.arrow_back,color: Colors.black,)),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
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
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              ],
          ),
        ),
        body:SingleChildScrollView(
          child: Column(
              children: [
                Image(image: AssetImage(imgbg140),height: MediaQuery.of(context).size.height*0.252),

          Padding(
          padding: const EdgeInsets.only(right: 115,top: 10),
          child:  GradientText(
            "Essential MakeUp Items",
            colors: [
              Colors.pink,
              Colors.purple,
              Colors.blueAccent,
              Colors.cyan,
              Colors.green,
              Colors.amber,
              Colors.deepOrange,
            ],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 5,right:280),
          child: Container(
            height: 21,
            width:91,

            decoration: BoxDecoration(
              color: Colors.lime,
                border: Border.all(color: Colors.orange,width: 2)),
            child: Center(child: Text("Upto 33% Off",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),),
        ),
                Container(

                  width: double.infinity,
                  // color: Colors.cyan,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisExtent:213,
                        mainAxisSpacing:15

                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap:() {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>SecondGridWomensMakeupProductScreen[index]));
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5,left: 255),
                              child: Container(
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
                            ),
                            Row(
                              children:[
                                Column(
                                  children: [
                                    ClipRRect(
                                      // borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          containerposterwomenmakeupitemsdetails[index].images,
                                          height: 150,
                                          width: 170,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(containerposterwomenmakeupitemsdetails[index].brand,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(containerposterwomenmakeupitemsdetails[index].text,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                    Container(
                                      child: Center(child: Text(containerposterwomenmakeupitemsdetails[index].deal,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)),
                                      color:Colors.red.shade900,
                                      width: MediaQuery.of(context).size.width*0.25,
                                      height: MediaQuery.of(context).size.height*0.025,
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                    RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 3,
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
                                        Text(containerposterwomenmakeupitemsdetails[index].price,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                        SizedBox(width: 8,),
                                        Text(containerposterwomenmakeupitemsdetails[index].pricedis,style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey.shade900),),
                                        SizedBox(width: 8,),
                                        Text(containerposterwomenmakeupitemsdetails[index].pricen,style: TextStyle(color: Colors.black),),
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                    Row(
                                      children: [
                                        Text(containerposterwomenmakeupitemsdetails[index].free,style: TextStyle(fontWeight:FontWeight.w500 ),),
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
      )
    )
    )
    );
  }
}

// import 'package:video_player/video_player.dart';
//
// void main() => runApp(const VideoApp());
//
// /// Stateful widget to fetch and then display video content.
// class VideoApp extends StatefulWidget {
//   const VideoApp({Key? key}) : super(key: key);
//
//   @override
//   _VideoAppState createState() => _VideoAppState();
// }
//
// class _VideoAppState extends State<VideoApp> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Demo',
//       home: Scaffold(
//         body: Container(
//           child: _controller.value.isInitialized
//               ? AspectRatio(
//             aspectRatio: _controller.value.aspectRatio,
//             child: VideoPlayer(_controller),
//           )
//               : Container(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller.value.isPlaying
//                   ? _controller.pause()
//                   : _controller.play();
//             });
//           },
//           child: Icon(
//             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:shopiee/models/GridView/FirstGrid/Components/Container1_Details.dart';
// import 'package:shopiee/models/GridView/FirstGrid/Components/Container4_Details.dart';
// import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
//
// import '../../First/components/Mens_Suit.dart';
// class WomensMakeup extends StatelessWidget {
//   const WomensMakeup({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.pink.shade900,
//         leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: () => Navigator.pop(context),),
//         title:Text("Mens Suits"),
//         actions: [IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen(),)), icon:Icon(Icons.shopping_cart))],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           // width: double.infinity,
//           child: GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: containerposteritemsdetails4.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.58,
//             ),
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 6,),
//                     ClipRRect(
//                         borderRadius: BorderRadius.circular(20),
//                         child: Image.asset(
//                           containerposteritemsdetails4[index].images,
//                           height: MediaQuery.of(context).size.height * 0.30,
//                           width: MediaQuery.of(context).size.width * 0.45,
//                           fit: BoxFit.fill,
//                         )),
//                     const SizedBox(
//                       height: 6,
//                     ),
//                     Text(containerposteritemsdetails4[index].Description,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
//                     SizedBox(height: 5,),
//                     Text(containerposteritemsdetails4[index].Price,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
//                     SizedBox(height: 2,),
//                     Text(containerposteritemsdetails4[index].Text,textAlign: TextAlign.center),
//
//                   ],
//
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }