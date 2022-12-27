import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/view/screen/AuthScreen/auth_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: AppBar(
             elevation: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.blue, Colors.white]),
              ),
            ),
            // leading: InkWell(
            //     onTap: () => Navigator.pushReplacement(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => Homescreen(),
            //         )),
            //     child: Icon(
            //       Icons.arrow_back,
            //       color: Colors.white,
            //     )),
            title: Row(
              children: [
                Text(
                  "Shopiee",
                  style: TextStyle(
                      color: Color.fromRGBO(14, 49, 62, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  ".in",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        body:SingleChildScrollView(
          child: Container(
            // color: Colors.cyan,
            //  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imgbg29),fit: BoxFit.fill)),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Hello,",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        " Ankit",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      CircleAvatar(
                         maxRadius: 25,
                        backgroundImage: AssetImage(imgbg2),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(
                              Icons.wallet_giftcard_rounded,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text("Orders",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(Icons.favorite_border, color: Colors.blueAccent),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text("Wishlist",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.013,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(Icons.discount_outlined,
                                color: Colors.blueAccent),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text("Coupons",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(Icons.shopping_bag_outlined,
                                color: Colors.blueAccent),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text("Buy Again",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.013,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "Account Settings",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person,color: Colors.blueAccent,),
                  title: Text(
                    'Edit Profile',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet,color: Colors.blueAccent,),
                  title: Text(
                    'Saved Cards & Wallet',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.location_on,color: Colors.blueAccent,),
                  title: Text(
                    'Saved Addresses',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.language_outlined,color: Colors.blueAccent,),
                  title: Text(
                    'Select Language',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.013,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    "My Activity",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
          ListTile(
            leading: Icon(Icons.edit_calendar,color: Colors.blueAccent,),
            title: Text(
              'Reviews',style: TextStyle(fontWeight: FontWeight.w600),
            ),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
          ),
                ListTile(
                  leading: Icon(Icons.question_answer_outlined,color: Colors.blueAccent,),
                  title: Text(
                    'Questions & Answers',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(
                    "Feedback & Information",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.event_note_sharp,color: Colors.blueAccent,),
                  title: Text(
                    'Terms,Policies and Licenses',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.question_mark_outlined,color: Colors.blueAccent,),
                  title: Text(
                    'Browse FAQs',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.headset_mic_outlined,color: Colors.blueAccent,),
                  title: Text(
                    'Help Center',style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.grey,
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {

                      showDialog(context: context, builder:(context) {
                        return AlertDialog(
                          // title: Center(child: Text("Log Out")),
                          backgroundColor: Colors.white,
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text("Do You Want To Log Out?",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                      children: [
                                        SizedBox(width: 50,),
                                        TextButton(
                                            onPressed: () {
                                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthScreen(),));
                                        }, child: Text("Log Out")),
                                        SizedBox(width: 20,),
                                       TextButton(onPressed: () {
                                        Navigator.pop(context);
                                       },
                                           child: Text("Cancel"))
                                      ],
                                    ),
                                  ],
                            ),
                          )
                        );
                      },);
                    },
                    child: Text("    Log Out   ",style: TextStyle(color: Colors.white,fontSize: 20),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
