import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/models/GridView/FirstGrid/Components/Container1/engghoodie_samplepic.dart';
import 'package:shopiee/view/common/MensWearProductPg/payment_4.dart';
import 'package:shopiee/view/screen/CartScreen/cart_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../screen/HomeScreen/components/Grids/First/components/Mens_Wear.dart';

class MensWearProduct4 extends StatelessWidget {
  const MensWearProduct4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        leading: IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MensWear(),
                )),
            icon: Icon(Icons.arrow_back)),
        title: Text("Product Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children:[
                SizedBox(width: 355,),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Icon(Icons.share_rounded,color: Colors.black,),
                ),],
            ),
            Positioned(
              child: Center(
                child: Image(
                  image: AssetImage(imgbg34),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.081,

            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Colour: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text("Blue",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Size: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text("XL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "-10%",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "\u{20B9}899",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "M.R.P.:",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\u{20B9}999",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text(
                "Inclusive of all taxes",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "FREE delievery",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    " Hurry!!!Only 1 Left In Stock",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      backgroundColor: Colors.grey.shade300,
                      content: Text('Product Added To Cart Successfully!!'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: Colors.amber),
                  child: Center(
                    child: Text(
                      "Add To Cart",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Payment4(),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      "Buy Now",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 235),
              child: Text(
                "Product Details",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text(
                "Material Type",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Demin",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 335),
              child: Text(
                "Style",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 305),
              child: Text(
                "Blouson",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "Pattern",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 325),
              child: Text(
                "Solid",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 233),
              child: Text(
                "Country Of Origin",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                "India",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "About This Item",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Stylish Denim jacket",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Comfortable & Stylish",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.stop, size: 15),
                  Text(
                    "Fashion Denim Jacket",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text(
                "Description",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 18),
            //   child: Text(
            //       This winter Indian homegrown brand ADRO brings you the best quality 100% cotton hooded sweatshirts
            //       to keep you warm. Made in India Product for the Indian market at the Best Prices. Pair it with Jeans/Joggers or
            //        Shorts and this sweatshirts/hoodie made of soft fabric will make other guys go green with envy. We at ADRO offers
            //        Top Quality casual wear in the widest variety which makes it easy to choose and at the prices that are easy to reach.
            //        ADRO products are made of Premium Fabrics which are Eco-Friendly to ensure the Best Quality and Great Comfort.
            //        ADRO deals in Men's Sweatshirts, Men's Printed T-Shirts, Full Sleeve T-Shirts, Polo T-Shirts, Hoodies for men.
            //       We also in plan to add Men's Shirts, Jeans and Chinos/Shorts to keep you updated with trends. ADRO - Keep Inventing!!),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ReadMoreText(
                "For us,quality and style come above all else .Because modern men needs clothing this is reliable,confortable,and very stylish,we have designed an exquistic collection of jean jackets that will take your outfits to the next level.avaliable in a wide range of colors,these denims jackets are universal accesory that looks amazing on anyone.The Jean jackets for a men feature a slightly distressed look that is never out of style.",
                trimLines: 1,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: TextStyle(fontWeight: FontWeight.w500),
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.025,
                    width: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.lightBlue,
                            Colors.white,
                          ]),
                    ),
                    child: Center(
                        child: Text(
                          "Top Brand-",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  Text(
                    "Hozie",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.verified,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  "  84% positive rating from 10K+ customers.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.verified,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  "  2K+ recent orders from this brand.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.verified,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  "  2+ years on shopiee.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Customer reviews",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 3.5,
                    minRating: 3.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "3.5 out of 5",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 16,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "32 global ratings",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Highly Rated By Customers For",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    color: Colors.grey.shade300,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: 140,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            " Cloth Quality",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: 199,
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Comfortable Product",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Container(
                color: Colors.grey.shade300,
                height: MediaQuery.of(context).size.height * 0.03,
                width: 170,
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        " Value For Money",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Top reviews from India",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
                  height: 43,
                  width: 66,
                  child: Image(
                    image: AssetImage(imgbgin),
                    fit: BoxFit.cover,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.person_2_rounded,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Shopiee Customer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 5,
                    minRating: 5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Verified Purchase",
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Awesome",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.emoji_emotions,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                Text(
                  "Jacket",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text(
                "Reviewed in India on 3 November 2022",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text("Size:XL  |  Colour:Blue"),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                  "Very Good and quality also good,color even 1 % also not shaded, i have used over 1 hyears , now again i wanted to buy with different color,"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Helpful",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Report",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white70,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                    maxRadius: 20, backgroundImage: AssetImage(imgbg22)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sachin15641",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 4,
                    minRating: 4,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Verified Purchase",
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Nice Jacket ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.amber,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text(
                "Reviewed in India on 4 December 2021",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                  "A Bit Loose,But i encourage seller to make more tech hoodies,more IT guys hoodies,more programmer hoodies."),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Helpful",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          content: Text('Thanks'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Ok'),
                              onPressed: () {
                                Navigator.of(dialogContext)
                                    .pop(); // Dismiss alert dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Report",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle( color: Colors.white70,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 1,color: Colors.grey,),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      backgroundColor: Colors.grey.shade300,
                      content: Text('Not More Than Two Reviews Are There Till Now'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.of(dialogContext)
                                .pop(); // Dismiss alert dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: ListTile(
                leading: Text("See all reviews",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
            ),
            Divider(thickness: 1,color: Colors.grey,),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Looking For A Specific Info?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  labelText: "Search in reviews, Q&A....",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Customer Question",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: 330,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgbg5), fit: BoxFit.cover),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text(
                      "Q: What is fabric",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "  100% Cotton 300 GSM Fabric",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 26,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      "Hozie SELLER   |  6 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Q: My age is 18 which which size should i buy",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  Please buy a medium size",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      " SELLER   |  9 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Q: Is XXL Size avaliable for this hoodie",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  No Sir",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      "Hozie SELLER   |  1 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Q: Is there COD Avaliable for this product",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Text(
                          "A:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  No Sir,Only Online Payments",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      " SELLER   |  2 months ago",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
