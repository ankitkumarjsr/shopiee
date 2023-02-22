import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1_Details.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container2_Details.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/components/Grids/First/components/footwear_box.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MensFootwear extends StatelessWidget {
  const MensFootwear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Men's Footwear"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children:[
                  GradientText(
                  "Categories",
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
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, top: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                mensfootwearlist1details[index].images),
                            maxRadius: 34,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            mensfootwearlist1details[index].title,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: mensfootwearlist1details.length,
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 15,
              width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mensfootweargrid1details.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return FootWearBox(index: index);
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            Container(
              color: Colors.black,
              // height: MediaQuery.of(context).size.height*0.45,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 300,bottom: 5,top: 3),
                    child: Text("  Sponsored*",style: TextStyle(color: Colors.grey.shade200,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.4,
                    child: Image.asset(imgbg65,
                    fit: BoxFit.cover,
                    // height: MediaQuery.of(context).size.height*0.48,
                    // width: double.infinity,
                  ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey,thickness: 3),
          ],
        ),
      ),
    );
  }
}
