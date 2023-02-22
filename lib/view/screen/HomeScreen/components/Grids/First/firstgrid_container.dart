import 'package:flutter/material.dart';
import 'package:shopiee/constants/screen_list.dart';
import 'package:shopiee/models/GridView/FirstGrid/GridView_Container_Poster1.dart';
class FirstGrid extends StatelessWidget {
  const FirstGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: double.infinity,
      color: Colors.orangeAccent.shade100,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: containerPosterItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap:() {
              Navigator.push(context,MaterialPageRoute(builder: (context) => firstGridScreens[index],));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 6,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      containerPosterItems[index].images,
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.45,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 6,
                ),
                Text(containerPosterItems[index].name,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500),),
              ],

            ),
          );
        },
      ),
    );
  }
}
