import 'package:flutter/material.dart';
import 'package:shopiee/models/GridView/SecondGrid/Components/Container_3_Details.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';

import '../../../../../../../models/GridView/SecondGrid/Components/Container_1_Details.dart';

class WomensJewellery extends StatelessWidget {
  const WomensJewellery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: () => Navigator.pop(context),),
        title:Text("Women's Jewellery"),
        actions: [IconButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen(),)), icon:Icon(Icons.shopping_cart))],
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: containerposterwomenjewelleryitemsdetails3.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.58,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 6,),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          containerposterwomenjewelleryitemsdetails3[index].images,
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(containerposterwomenjewelleryitemsdetails3[index].title,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 2,),
                    Text(containerposterwomenjewelleryitemsdetails3[index].Description,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(containerposterwomenjewelleryitemsdetails3[index].Price,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
                    SizedBox(height: 2,),
                    // Text(containerposterwomenjewelleryitemsdetails3[index].Text,textAlign: TextAlign.center),
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