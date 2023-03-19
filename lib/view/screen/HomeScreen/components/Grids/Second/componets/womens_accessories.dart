import 'package:flutter/material.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/Container1_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container4_Details.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';

import '../../../../../../../models/GridView/SecondGrid/Components/Container_2_Details.dart';
import '../../First/components/Mens_Suit.dart';
class WomensAccessories extends StatelessWidget {
  const WomensAccessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade900,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: () => Navigator.pop(context),),
        title:Text("Women's Accessories"),
        actions: [IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen(),)), icon:Icon(Icons.shopping_cart))],
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount:   containerposterwomenaccessories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.58,
              mainAxisSpacing: 2.5,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ,)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 6,),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          containerposterwomenaccessories[index].images,
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(containerposterwomenaccessories[index].text,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Text(containerposterwomenaccessories[index].price,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Text(containerposterwomenaccessories[index].disprice,textAlign: TextAlign.center,style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    SizedBox(height: 2,),
                    Container(
                      color: Colors.pink.shade900,
                        child: Text(containerposterwomenaccessories[index].percen,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.limeAccent))),
                  ],

                ),
              );
            },
          ),
        ),
      ),
    );
  }
}