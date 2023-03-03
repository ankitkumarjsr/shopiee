import 'package:flutter/material.dart';
import 'package:shopiee/constants/screen_list.dart';
import 'package:shopiee/models/GridView/SecondGrid/GridView_Container_poster2.dart';
 class SecondGrid extends StatelessWidget {
   const SecondGrid({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  Container(
       height: MediaQuery.of(context).size.height * 0.65,
       color: Colors.pink.shade100,
       width: double.infinity,
       child: GridView.builder(
         shrinkWrap: true,
         physics: const NeverScrollableScrollPhysics(),
         itemCount: containerposteritems1.length,
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           childAspectRatio: 0.82,
         ),
         itemBuilder: (context, index) {
           return GestureDetector(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => secondGridScreens[index],)),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: Image.asset(
                       containerposteritems1[index].images,
                       height: MediaQuery.of(context).size.height * 0.240,
                       width: MediaQuery.of(context).size.width * 0.45,
                       fit: BoxFit.fill,
                     )),
                 const SizedBox(
                   height: 6,
                 ),
                 Text(containerposteritems1[index].name,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
               ],

             ),
           );
         },
       ),
     );
   }
 }
