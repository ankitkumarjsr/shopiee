import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopiee/config/device_size.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

import '../../../services/auth.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
   TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
  final Authservice _auth =
  Authservice(FirebaseAuth.instance);


  @override
  Widget build(BuildContext context) {
     return Scaffold(
    // appBar:AppBar(
    //    backgroundColor: Colors.deepOrange,
    // ),
      body: SafeArea(
        child: Container(

          decoration: const BoxDecoration(
             image: DecorationImage(image: AssetImage(imgbg29),
           fit: BoxFit.fill,


            ),
        ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.orange,
                      height: height(context)*0.05,
                      width: width(context)*0.1,
                      child: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back,color: Colors.black,)))
                ],
              ),
              SizedBox(height: 190,),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text("Login",style: TextStyle(fontSize:35,color: Colors.orange,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,backgroundColor: Colors.black),),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  controller: emailcontroller,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    labelText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    ),
                    labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(

                  controller: passwordcontroller,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.key,
                      size: 30,
                      color: Colors.black,
                    ),
                     suffixIcon:Icon(Icons.remove_red_eye,color: Colors.black,),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        letterSpacing: 0.5),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(alignment: Alignment.center,
                color: Colors.orange,
                width: MediaQuery.of(context).size.width*0.29,
                height: MediaQuery.of(context).size.height*0.06,
                child: InkWell(onTap: () async {
                 dynamic validation = await _auth.signIn(email: emailcontroller.text, password: passwordcontroller.text);
                 if(validation.runtimeType == String){
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(validation)));
                 }
                },
                    child: Text("Login",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
