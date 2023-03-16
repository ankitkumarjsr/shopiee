import 'package:flutter/material.dart';
import 'package:shopiee/models/GridView/SecondGrid/Components/Container_1_Details.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

import '../../../../../../../constants/screen_list.dart';

class WomensClothes extends StatelessWidget {
  const WomensClothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade200,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),)),),
        title:Text("Women's Clothes"),
        actions: [IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen(),)), icon:Icon(Icons.shopping_cart))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   child: VideoApp(),
            // ),
            Container(
              // width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: containerposterwomensareeitemsdetails.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondGridWomensWearProductScreen[index],)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 6,),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              containerposterwomensareeitemsdetails[index].images,
                              height: MediaQuery.of(context).size.height * 0.32,
                              width: MediaQuery.of(context).size.width * 0.45,
                              fit: BoxFit.fill,
                            )),
                        Text(containerposterwomensareeitemsdetails[index].Text,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(containerposterwomensareeitemsdetails[index].Description,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(containerposterwomensareeitemsdetails[index].Price,textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough),),
                            SizedBox(width: 5,),
                            Text(containerposterwomensareeitemsdetails[index].Pricedis,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,),),
                            SizedBox(width: 5,),
                            Text(containerposterwomensareeitemsdetails[index].Peroff,textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],

                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );;
  }
}