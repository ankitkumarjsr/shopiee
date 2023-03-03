import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';
import 'package:shopiee/view/common/MensWearProductPg/mens_wear_1.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';


class Payment10 extends StatelessWidget {
  Payment10({Key? key}) : super(key: key);

  TextEditingController Addresscontroller=TextEditingController();
  TextEditingController PhoneNocontroller=TextEditingController();
  final formkey=GlobalKey<FormState>();
  final formkey1=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar:AppBar(
              toolbarHeight: 75,
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor:Colors.amber,
              title: Text(
                " Payment",
                style: TextStyle(
                    color: Color.fromRGBO(3, 35, 56, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(45),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 19,top: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel",style: TextStyle(fontSize: 18,color: Color.fromRGBO(3, 35, 56, 1.0),),
                    ),
                  ),
                ),
              ]
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children:[
                          Column(
                            children: [
                              Image(image: AssetImage(imgbg40),
                                height: MediaQuery.of(context).size.height*0.18,
                                width: MediaQuery.of(context).size.width*0.3,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Off White Denim Jacket",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.014,),
                                Row(
                                  children: [
                                    Text("\u{20B9}999",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                    SizedBox(width: 8,),
                                    Text("\u{20B9}1099",style: TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough,color: Colors.grey.shade600),),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.014,),
                                Text("Save: \u{20B9} 100.00 (10%)",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.red),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.014,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 55),
                                  child: Text("Sold By UNITED DENIM",style: TextStyle(color: Colors.grey.shade700),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1.5,color: Colors.grey,),
                    ],
                  ),
                ),
                ListTile(leading: Text("1 item",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
                  title: Text("View Details",style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Text("Add Gifts Options"),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                  onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => MensWearProduct1(),)),
                ),
                Divider(thickness: 1.5,color: Colors.grey,),
                ListTile(
                  leading: Text("Get it by",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
                  title: Text("Day After Tommorow",style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Text("Free Delievery With Your Prime Membership"),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                  onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => MensWearProduct1(),)),
                ),
                Divider(thickness: 1.5,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(" 𝙀𝙣𝙩𝙚𝙧 𝙔𝙤𝙪𝙧 𝘿𝙚𝙩𝙖𝙞𝙡𝙨",style: TextStyle(fontSize: 24),),
                      SizedBox(width: 10,),
                      Icon(Icons.save_as_outlined,color: Colors.black)
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Form(
                    key:formkey1 ,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Address cannot be empty";
                        }
                      },
                      controller: Addresscontroller,
                      cursorColor: Colors.black,
                      style:  const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      decoration:  const InputDecoration(
                        filled: true,
                        // fillColor: Colors.grey,
                        labelText: "Enter Delievery Address",
                        prefixIcon: Icon(
                          Icons.place_outlined,
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
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Form(
                    key: formkey,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty || value.length<10){
                          return "Invalid Number";
                        }
                      },
                      controller: PhoneNocontroller,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      style:  const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      decoration:  const InputDecoration(
                        filled: true,
                        // fillColor: Colors.grey,
                        labelText: "Enter Phone Number",
                        prefix: Text("+91 "),
                        prefixIcon: Icon(
                          Icons.phone_android,
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
                ),
                Divider(thickness: 1.5,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text("Select a payment method",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                ),
                SizedBox(height: 8,),
                Container(alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15.0)),
                    width: MediaQuery.of(context).size.width*0.95,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: Text("Continue",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),)),

                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text("Shopiee Pay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: ListTile(
                    leading: Icon(Icons.not_interested_outlined,color: Colors.black,),
                    title: Text("UPI/Netbanking",style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text("Currently Unavaliable",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 1)),
                  ),
                ),
                SizedBox(height:15,),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text("MORE WAYS TO PAY",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(height:12,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: ListTile(
                    leading: Icon(Icons.not_interested_outlined,color: Colors.black,),
                    title: Text("Pay With Debit/Credit/ATM Cards",style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text("Currently Unavaliable",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 1)),
                  ),
                ),
                SizedBox(height:17,),
                Padding(
                  padding: const EdgeInsets.only(right: 320),
                  child: Text("Default*",style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                SizedBox(height:7,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: ListTile(
                    leading: Icon(Icons.check_box,color: Colors.black,),
                    title: Text("Cash On Delievery/Pay On Delievery",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                    subtitle: Text("Scan & Pay using Shopiee App.Cash,UPI,Cards also accepted.",style: TextStyle(color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 1)),
                  ),
                ),
                SizedBox(height:15,),
                InkWell(
                  onTap: () async{
                    if(formkey.currentState!.validate() && formkey1.currentState!.validate() )
                    {
                      await showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              Container(height: 600,
                                decoration: new BoxDecoration(
                                  // color: Colors.redAccent,
                                    borderRadius:BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0)),
                                    border: Border.all(color: Colors.lime,width: 7)
                                ),
                                child: Column(
                                  children: [
                                    Image(image: AssetImage(imgbg22ii)),
                                    Image(image: AssetImage(imgbg22iii)),
                                  ],
                                ),
                              ),

                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Container(alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0)),
                      width: MediaQuery.of(context).size.width*0.95,
                      height: MediaQuery.of(context).size.height*0.06,
                      child: Text("Continue",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400),)),
                ),

                SizedBox(height:20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: ListTile(
                    leading: Image(
                        image: AssetImage(imgbg22i)),
                    title: Text("100% Purchase Protection",style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text("Original Products | Secure Payments",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue),),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 1),borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),

                SizedBox(height: 50,),

              ],
            ),
          ),
        )
    );
  }
}
