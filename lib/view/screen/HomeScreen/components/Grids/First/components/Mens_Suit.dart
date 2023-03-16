import 'package:flutter/material.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/Container1_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container4_Details.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

import '../../../../../../../constants/screen_list.dart';
class MensSuits extends StatelessWidget {
  const MensSuits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),))),
       title:Text("Mens Suits"),
        actions: [IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen(),)), icon:Icon(Icons.shopping_cart))],
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: containerposteritemsdetails4.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.58,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstGridMensSuitsProductScreen[index],)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 6,),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          containerposteritemsdetails4[index].images,
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(containerposteritemsdetails4[index].Description,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(containerposteritemsdetails4[index].Price,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
                    SizedBox(height: 2,),
                    Text(containerposteritemsdetails4[index].Text,textAlign: TextAlign.center),

                  ],

                ),
              );
            },
          ),
        ),
      ),
    );;
  }
}
