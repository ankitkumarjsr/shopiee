import 'package:flutter/material.dart';

import '../../../../../../../models/GridView/FirstGrid/Components/Container2_Details.dart';

class FootWearBox extends StatelessWidget {
  final int index;
  const FootWearBox({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  mensfootweargrid1details[index].images,
                  height:
                  MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width * 0.45,
                  fit: BoxFit.fill,
                ),
                Row(
                  children: [
                    Container(
                      child: Center(child: Text(mensfootweargrid1details[index].savings,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),)),
                      color:Colors.pink,
                      width: MediaQuery.of(context).size.width*0.20,
                      height: MediaQuery.of(context).size.height*0.025,
                    ),
                    SizedBox(width: 7,),
                    Padding(
                      padding: const EdgeInsets.only(top:10),
                      child: Text(mensfootweargrid1details[index].text,style: TextStyle(color: Colors.pink,fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(mensfootweargrid1details[index].description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              ],
            ),
            Positioned(
                top: 12,
                right: 12,
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                      size: 25,
                    ))),
          ],
        ));
  }
}
