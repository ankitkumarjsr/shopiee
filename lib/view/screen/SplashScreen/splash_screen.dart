import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/view/screen/AuthScreen/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.black87,
      child: Stack(children: [
        Image(image: AssetImage(imgborder),height: MediaQuery.of(context).size.height*3,width: double.infinity,),
        Column(
          children: [
            SizedBox(height: 150,),
            Image(color: Colors.black87,image: AssetImage(imgbg22i)),
            SizedBox(height: 80,),
            Row(
              children: [
                SizedBox(width: 90,),
                Text("𝐌𝐚𝐝𝐞 𝐈𝐧 𝐈𝐧𝐝𝐢𝐚",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.white),),
                SizedBox(width: 10,),
                Image(image: AssetImage(imgbgin),height: 35,width: 65,),
              ],
            ),
          ],
        ),
      ],
        // child:
      ),
      ),
    );
  }
}
