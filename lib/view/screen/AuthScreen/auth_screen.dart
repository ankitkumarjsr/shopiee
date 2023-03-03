import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/view/screen/AppScreen/app_screen.dart';
import 'package:shopiee/view/screen/AuthScreen/login_screen.dart';
import 'package:shopiee/view/screen/AuthScreen/sign_up_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white12,
      body: Column(

        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.85,
                child: Image.asset(imgbg22),
              ),
              Positioned(
                top:478,
                child: Column(
                  children: [
                  Text("𝐋𝐢𝐟𝐞 𝐈𝐬 𝐀 𝐒𝐡𝐨𝐩𝐚𝐡𝐨𝐥𝐢𝐜!",style: TextStyle(color: Colors.white, fontSize: 23),),
                     SizedBox(height: 3),
                     Text("So Shop Now With Shoppiee",style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () =>Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen(),)),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.yellowAccent,
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AppScreen() ,)),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.white,
                        child: Text(
                          "Register",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
