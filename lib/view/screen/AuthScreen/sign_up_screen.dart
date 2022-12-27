import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopiee/config/device_size.dart';
import 'package:shopiee/services/auth.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);

   TextEditingController namecontroller=TextEditingController();
   TextEditingController emailcontroller=TextEditingController();
   TextEditingController passwordcontroller=TextEditingController();
   TextEditingController confirmpasswordcontroller=TextEditingController();
   final Authservice _auth =
   Authservice(FirebaseAuth.instance);
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          height: height(context),
          width: width(context),
          color: Colors.grey,
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back,color: Colors.black,)),
                     // IconButton( icon: Icon(Icons.arrow_back_ios_new_sharp)),
                const SizedBox(height: 50,),
                const Text("Create an account",style: TextStyle(fontSize: 30)),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Name cannot be empty";
                      }
                    },
                    controller: namecontroller,
                    cursorColor: Colors.black,
                    style:  const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    decoration:  const InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      labelText: "Name",
                      prefixIcon: Icon(
                        Icons.person,
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                    controller: emailcontroller,
                    cursorColor: Colors.black,
                    style:  const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    decoration:  const InputDecoration(
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                    controller: passwordcontroller,
                    cursorColor: Colors.black,
                    style:  const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    decoration:  const InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.black,
                        size: 30,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black),
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                    validator: (value) {
                      if(value!=passwordcontroller.text){
                        return "Password Does Not Matched";
                      }
                    },
                    controller: confirmpasswordcontroller,
                    cursorColor: Colors.black,
                    style:  const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    decoration:  const InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      labelText: "Confirm Password",
                      prefixIcon: Icon(
                        Icons.shield,
                        color: Colors.black,
                        size: 30,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
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

                SizedBox(height: 10,),
                Center(
                  child:InkWell(
                    onTap: ()async {
                      if(formkey.currentState!.validate()){
                        await _auth.signUp(email: emailcontroller.text, password: passwordcontroller.text);
                      }
                    },
                    child: Container(alignment: Alignment.center,
                      color: Colors.orange,
                      width: width(context)*0.29,
                      height: height(context)*0.06,
                          child: Text("Login",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
